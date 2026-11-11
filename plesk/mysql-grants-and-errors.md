# MySQL - Grants, Access Denied and SQL import notes / MySQL - Yetki Verme, Access Denied ve SQL İçe Aktarma Notları

## 🇹🇷 Türkçe

Veritabanı kullanıcısına yetki verme, `1045 Access denied` hatası ve SQL dosyası içe aktarma. Orijinaldeki gerçek veritabanı/kullanıcı adları yer tutucuyla değiştirildi. `*.*` ve `'%'` ile tam yetki vermek güvenlik riskidir; mümkünse tek veritabanı + `localhost` kullanın. Büyük dosyada `max_allowed_packet` değerini yükseltin.

## 🇬🇧 English

Granting privileges, the `1045 Access denied` error and importing a SQL file. Real database/user names from the original were replaced with placeholders. Full rights on `*.*` for `'%'` is a security risk; prefer one database + `localhost`. For big files raise `max_allowed_packet`.

## Commands / Komutlar

```sql
GRANT ALL PRIVILEGES ON `DB_NAME`.* TO 'DB_USER'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- mysqldump: Got error: 1045: "Access denied for user ..."  -> check user, password, grants:
SHOW GRANTS FOR 'DB_USER'@'localhost';

-- shell:
-- mysql -u DB_USER -p DB_NAME < backup.sql
-- /etc/my.cnf:  max_allowed_packet=256M
```
