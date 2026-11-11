# Database credentials note and SQL import example / Veritabanı Kullanıcı Şifreleri ve SQL Dosyası İçe Aktarma

## 🇹🇷 Türkçe

Orijinal not veritabanı kullanıcı adları ve **parolalarını** içeriyordu; bunların hiçbiri yayınlanmadı. Geriye kalan yararlı kısım SQL dosyasını içe aktarma komutudur.

## 🇬🇧 English

The original note contained database usernames and **passwords**; none of that was published. The useful part is the SQL import command.

## Commands / Komutlar

```bash
mysql -u DB_USER -p DB_NAME < backup.sql
```
