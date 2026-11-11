# Plesk - Updates and MariaDB my.cnf tuning / Plesk - Güncelleme ve MariaDB my.cnf Optimizasyonu

## 🇹🇷 Türkçe

Repoları düzeltir, tüm Plesk güncellemelerini kurar, EPEL ekler ve `/etc/my.cnf` ayarlarını yapar. Orijinal nottaki lisans anahtarı klasörü adımları ve özel mirror **kaldırıldı**. Değerleri sunucu RAM'ine göre ayarlayın.

## 🇬🇧 English

Fixes repos, installs all Plesk updates, adds EPEL and tunes `/etc/my.cnf`. The original's license-key-folder steps and private mirror were **removed**. Tune values to the server's RAM.

## Commands / Komutlar

```bash
yum -y update
plesk installer install-all-updates
yum install -y epel-release
nano /etc/my.cnf
# add under [mysqld]:
#   bind-address = 127.0.0.1
#   local-infile = 0
#   datadir = /var/lib/mysql
#   socket = /var/lib/mysql/mysql.sock
#   max_allowed_packet = 256M
#   max_connections = 600
service mariadb restart
```
