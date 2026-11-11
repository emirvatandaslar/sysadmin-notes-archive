# cPanel - Delete backups, trash and error_log (short copy) / cPanel - Backup, Çöp Kutusu ve error_log Silme (Kısa Kopya)

## 🇹🇷 Türkçe

Önceki notla aynı komutların kısa kopyası. Aynı uyarılar geçerlidir: önce listeleyin, sonra silin.

## 🇬🇧 English

A short copy of the previous note with the same commands. Same warnings apply: list first, delete later.

## Commands / Komutlar

```bash
find /home/* -name 'backup-*.tar.gz' -type f -ls -exec rm -f {} \;
find /home/*/.trash/* -type f -ls -exec rm -f {} \;
find /home/*/public_html -name error_log -type f -ls -exec rm -f {} \;
```
