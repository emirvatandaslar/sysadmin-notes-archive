# Plesk - Upgrade the database server from the panel (panel.ini) / Plesk - Panel Üzerinden Veritabanı Sunucusu Güncelleme (panel.ini)

## 🇹🇷 Türkçe

Plesk'te `panel.ini` eklentisini kurun, açıp *Edit* ile dosyanın sonuna aşağıdaki bölümü ekleyin; sonra *Tools & Settings → Database Servers* altında güncelleme seçeneği görünür.

## 🇬🇧 English

Install the `panel.ini` extension in Plesk, open it, click *Edit* and append the section below; the upgrade option then appears under *Tools & Settings → Database Servers*.

## Commands / Komutlar

```ini
[databaseManagement]
features.canBeUpgraded = true
```
