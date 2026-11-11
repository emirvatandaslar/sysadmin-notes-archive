# Plesk - Pre-install commands / Plesk - Kurulum Öncesi Komutlar

## 🇹🇷 Türkçe

Kurulumdan önce sistemi güncelleyin, SELinux'u kapatın ve resmi yükleyiciyi çalıştırın. Orijinal nottaki kurulum sonrası lisans anahtarı klasörü/`chattr` adımları **lisans atlatma** içerdiği için yayınlanmadı; lisansı resmi yöntemle etkinleştirin.

## 🇬🇧 English

Before installing, update the system, disable SELinux and run the official installer. The original note's post-install license-key-folder/`chattr` steps were **not published** because they circumvent licensing; activate your license the official way.

## Commands / Komutlar

```bash
yum -y update
yum install nano
nano /etc/selinux/config      # SELINUX=disabled
sh <(curl https://autoinstall.plesk.com/one-click-installer || wget -O - https://autoinstall.plesk.com/one-click-installer)
```
