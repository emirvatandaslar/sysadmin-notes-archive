# cPanel - Delete old backups, trash and error_log files / cPanel - Eski Backup, Çöp Kutusu ve error_log Silme

## 🇹🇷 Türkçe

Disk dolduğunda kullanıcı dizinlerindeki eski backup arşivlerini, çöp kutularını ve `error_log` dosyalarını siler. **Önce `-exec rm -f {} \;` kısmını çıkarıp yalnızca listeleyerek kontrol edin.** Müşteri yedeklerinin başka yerde olduğundan emin olun.

## 🇬🇧 English

Removes old backup archives, trash folders and `error_log` files from user directories when the disk is full. **Dry-run first: drop `-exec rm -f {} \;` and only list.** Make sure customer backups exist elsewhere.

## Commands / Komutlar

```bash
find /home/* -name 'backup-*.tar.gz' -type f -ls -exec rm -f {} \;
find /home/*/.trash/* -type f -ls -exec rm -f {} \;
find /home/*/public_html -name error_log -type f -ls -exec rm -f {} \;
```
