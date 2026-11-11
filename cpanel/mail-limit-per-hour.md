# cPanel - Hourly mail limit per domain / cPanel - Kullanıcı Saatlik Mail Gönderim Sınırı

## 🇹🇷 Türkçe

Kullanıcı dosyasına `MAX_EMAIL_PER_HOUR-<domain>` satırı eklenir. Genel limit için WHM → Tweak Settings kullanılabilir.

## 🇬🇧 English

Add a `MAX_EMAIL_PER_HOUR-<domain>` line to the user's file. For a global limit use WHM → Tweak Settings.

## Commands / Komutlar

```bash
nano /var/cpanel/users/USERNAME
# add this line:
MAX_EMAIL_PER_HOUR-example.com=100
```
