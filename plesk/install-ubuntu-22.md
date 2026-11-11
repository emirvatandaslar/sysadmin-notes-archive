# Ubuntu 22.04 - Plesk installation / Ubuntu 22.04 - Plesk Kurulumu

## 🇹🇷 Türkçe

Sunucuyu güncelleyin, resmi yükleyiciyi indirip çalıştırın; lisans anahtarı, bileşenler ve yönetici parolası istenebilir. Sonra `https://SUNUCU_IP:8443` adresinden girin.

## 🇬🇧 English

Update the server, download and run the official installer; you may be asked for a license key, components and an admin password. Then open `https://SERVER_IP:8443`.

## Commands / Komutlar

```bash
sudo apt update && sudo apt upgrade
wget https://installer.plesk.com/plesk-installer
chmod +x plesk-installer
sudo ./plesk-installer
```
