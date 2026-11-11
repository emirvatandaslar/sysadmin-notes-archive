#!/bin/bash
# TR: Yeni cPanel sunucuda IP, gateway, hostname, WHM iletişim e-postası ve NS ayarlarını yapar; diski genişletir.
# EN: Configures IP, gateway, hostname, WHM contact e-mail and nameservers on a new cPanel server; grows the root disk.
# TR: Orijinal betikteki markalı çıktı ve gerçek PHP kurmayan "ilerleme çubuğu" döngüsü kaldırıldı (yanıltıcıydı).
# EN: The original's branding and its fake "progress bar" PHP loop (it installed nothing) were removed.
# Assumes AlmaLinux with LVM root (/dev/mapper/almalinux-root) and interface ens192. Run from the console, not SSH.
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root. / Lütfen root olarak çalıştırın."
    exit 1
fi

read -p "New IP address / Yeni IP: " NEW_IP
read -p "New gateway / Yeni gateway: " NEW_GATEWAY
read -p "New hostname / Yeni hostname: " NEW_HOSTNAME
read -p "WHM contact e-mail / WHM iletişim e-postası: " NEW_CONTACT_EMAIL
read -p "NS1 (e.g. ns1.example.com): " NS1
read -p "NS2 (e.g. ns2.example.com): " NS2

echo "$NEW_IP" > /var/cpanel/mainip

IFCFG_FILE="/etc/sysconfig/network-scripts/ifcfg-ens192"
if [ -f "$IFCFG_FILE" ]; then
    sed -i "s/^IPADDR=.*/IPADDR=$NEW_IP/" "$IFCFG_FILE"
    sed -i "s/^GATEWAY=.*/GATEWAY=$NEW_GATEWAY/" "$IFCFG_FILE"
else
    echo "Error: $IFCFG_FILE not found!"
fi

/usr/local/cpanel/bin/set_hostname "$NEW_HOSTNAME"
hostnamectl set-hostname "$NEW_HOSTNAME"

if lsblk | grep -qw "/dev/mapper/almalinux-root"; then
    xfs_growfs /
else
    echo "No suitable root partition found for growing."
fi

read -p "Remove WP Toolkit? / WP Toolkit kaldırılsın mı? (yes/no): " REMOVE_WP
[[ "$REMOVE_WP" == "yes" ]] && rpm -e wp-toolkit-cpanel

WWWACCT_CONF="/etc/wwwacct.conf"
if [ -f "$WWWACCT_CONF" ]; then
    cat > "$WWWACCT_CONF" <<EOL
ADDR $NEW_IP
ADDR6
CONTACTEMAIL $NEW_CONTACT_EMAIL
CONTACTPAGER
DEFMOD jupiter
ETHDEV ens192
HOMEDIR /home
HOMEMATCH home
HOST $NEW_HOSTNAME
LOGSTYLE combined
NS $NS1
NS2 $NS2
NS3
NS4
NSTTL 86400
SCRIPTALIAS y
TTL 14400
EOL
fi

service ipaliases restart
/usr/local/cpanel/bin/set_hostname "$NEW_HOSTNAME"
echo "Done. Reboot the server, then add your licenses. / Bitti. Sunucuyu yeniden başlatın, sonra lisansları girin."
