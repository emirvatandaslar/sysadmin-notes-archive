# Plesk - Install on CentOS 7 / Plesk - CentOS 7 Kurulumu

## 🇹🇷 Türkçe

CentOS 7 EOL olduğundan repolar `vault.centos.org`'a yönlendirilir (orijinal nottaki özel mirror kaldırıldı), sonra Plesk yükleyicisi çalıştırılır. Kalıcı çözüm AlmaLinux/Rocky'dir.

## 🇬🇧 English

CentOS 7 is EOL, so repos are pointed to `vault.centos.org` (the original note's private mirror was removed), then the Plesk installer runs. The permanent fix is AlmaLinux/Rocky.

## Commands / Komutlar

```bash
sed -i 's|^mirrorlist=|#mirrorlist=|; s|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|' /etc/yum.repos.d/CentOS-*.repo
yum clean all && yum makecache
yum update -y
sh <(curl https://autoinstall.plesk.com/one-click-installer || wget -O - https://autoinstall.plesk.com/one-click-installer)
```
