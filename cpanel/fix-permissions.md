# cPanel - Fix file permissions and ownership (fixperms.sh) / cPanel - Dosya İzni ve Sahiplik Düzeltme (fixperms.sh)

## 🇹🇷 Türkçe

Üçüncü taraf `fixperms` betiği: <https://github.com/OmerAti/Cpanel-Fix-Permissions>. Çalıştırmadan önce okuyun; root yetkisiyle çalışır. Yalnızca belirtilen kullanıcının ev dizinini etkiler.

## 🇬🇧 English

Third-party `fixperms` script: <https://github.com/OmerAti/Cpanel-Fix-Permissions>. Read it before running; it runs as root. It only affects the given user's home directory.

## Commands / Komutlar

```bash
wget https://raw.githubusercontent.com/OmerAti/Cpanel-Fix-Permissions/master/fixperms.sh
chmod +x fixperms.sh
sudo sh ./fixperms.sh -a USERNAME        # single account
sudo sh ./fixperms.sh -v -a USERNAME     # single account, verbose
sudo sh ./fixperms.sh -all               # all accounts
sudo sh ./fixperms.sh -v -all            # all accounts, verbose
sh ./fixperms.sh --help
```
