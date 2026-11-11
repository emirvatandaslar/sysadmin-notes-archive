# Cloudflare - DNS records template (A, MX, SPF, DKIM, NS) / Cloudflare - DNS Kayıtları Şablonu (A, MX, SPF, DKIM, NS)

## 🇹🇷 Türkçe

Kendi sunucusunu NS olarak kullanan bir alan adı için tipik kayıtlar. Orijinaldeki gerçek alan adı, IP ve DKIM anahtarı yer tutucuyla değiştirildi; DKIM genel anahtarını kendi mail sunucunuzdan alın.

## 🇬🇧 English

Typical records for a domain using its own server as nameserver. The original's real domain, IP and DKIM key were replaced by placeholders; get the DKIM public key from your own mail server.

## Commands / Komutlar

```text
example.com.   3600 IN A     203.0.113.10
example.com.   3600 IN MX 10 mail.example.com.
example.com.   3600 IN TXT   "v=spf1 +a +mx -all"
www            3600 IN CNAME example.com.
ftp            3600 IN CNAME example.com.
mail           3600 IN A     203.0.113.10
webmail        3600 IN A     203.0.113.10
ns1            3600 IN A     203.0.113.10
ns2            3600 IN A     203.0.113.10
example.com.   3600 IN NS    ns1.example.com.
example.com.   3600 IN NS    ns2.example.com.
default._domainkey 3600 IN TXT "v=DKIM1; k=rsa; p=<PUBLIC_KEY_FROM_YOUR_MAIL_SERVER>"
```
