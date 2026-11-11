# AlmaLinux 8 - cPanel install (short step-by-step) / AlmaLinux 8 - cPanel Kurulumu (Kısa Adım Adım)

## 🇹🇷 Türkçe

Temiz AlmaLinux 8 sunucuda cPanel kurulumu. Geçerli bir cPanel lisansı gerekir. SELinux kapatılır, kurulum betiği indirilip çalıştırılır. Orijinal nottaki lisans/sürüm sabitleme (hile) adımları **kaldırıldı**.

## 🇬🇧 English

cPanel install on a clean AlmaLinux 8 server. A valid cPanel license is required. SELinux is disabled and the installer is downloaded and run. The license/version-pinning workaround steps from the original note were **removed**.

## Commands / Komutlar

```bash
rpm --import https://repo.almalinux.org/almalinux/RPM-GPG-KEY-AlmaLinux
mkdir -p /root/cpanel_profile
echo "mysql-version=10.6" > /root/cpanel_profile/cpanel.config
yum update -y && yum upgrade -y
yum install -y wget nano
sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
cd /home && curl -o latest -L https://securedownloads.cpanel.net/latest && sh latest
```
