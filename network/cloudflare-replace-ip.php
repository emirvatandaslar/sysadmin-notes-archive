<?php
// EN: Replace the content of every A record that equals OLD_IP with NEW_IP, across all zones of the account.
// TR: Hesaptaki tüm zone'larda içeriği OLD_IP olan A kayıtlarını NEW_IP ile değiştirir.
//
// Usage / Kullanım (CLI):
//   CF_API_TOKEN=xxxx php cloudflare-replace-ip.php 203.0.113.10 198.51.100.20          # dry run / deneme
//   CF_API_TOKEN=xxxx php cloudflare-replace-ip.php 203.0.113.10 198.51.100.20 --apply  # real change / gerçek değişiklik
//
// Token needs Zone:Read + DNS:Edit. Never commit the token. / Token'ı asla depoya koymayın.
// Limitation / Sınır: first 50 zones and first 5000 records per zone only (no pagination).

$token = getenv('CF_API_TOKEN');
[$script, $oldIp, $newIp] = $argv + [null, null, null];
$apply = in_array('--apply', $argv, true);

if (!$token || !filter_var($oldIp, FILTER_VALIDATE_IP) || !filter_var($newIp, FILTER_VALIDATE_IP)) {
    fwrite(STDERR, "Usage: CF_API_TOKEN=... php cloudflare-replace-ip.php OLD_IP NEW_IP [--apply]\n");
    exit(1);
}

function cf(string $endpoint, string $method = 'GET', ?array $data = null, string $token = ''): array {
    $ch = curl_init('https://api.cloudflare.com/client/v4/' . $endpoint);
    $headers = ['Authorization: Bearer ' . $token, 'Content-Type: application/json'];
    curl_setopt_array($ch, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_CUSTOMREQUEST  => $method,
        CURLOPT_HTTPHEADER     => $headers,
    ]);
    if ($data !== null) curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    $out = curl_exec($ch);
    if ($out === false) { fwrite(STDERR, 'curl error: ' . curl_error($ch) . "\n"); exit(1); }
    curl_close($ch);
    return json_decode($out, true) ?: ['success' => false];
}

$zones = cf('zones?per_page=50', 'GET', null, $token);
if (empty($zones['success'])) { fwrite(STDERR, "Could not list zones.\n"); exit(1); }

foreach ($zones['result'] as $zone) {
    $records = cf("zones/{$zone['id']}/dns_records?type=A&content=$oldIp&per_page=5000", 'GET', null, $token);
    if (empty($records['success'])) { echo "{$zone['name']}: could not read records\n"; continue; }

    foreach ($records['result'] as $r) {
        if (!$apply) { echo "[dry-run] {$r['name']}: $oldIp -> $newIp\n"; continue; }
        $res = cf("zones/{$zone['id']}/dns_records/{$r['id']}", 'PUT', [
            'type' => 'A', 'name' => $r['name'], 'content' => $newIp,
            'ttl' => $r['ttl'], 'proxied' => $r['proxied'],
        ], $token);
        echo ($res['success'] ?? false ? "updated  " : "FAILED   ") . $r['name'] . "\n";
    }
}
