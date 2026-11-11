# AlmaLinux - cPanel install (commands explained) / AlmaLinux - cPanel Kurulumu (Komut Açıklamalı Anlatım)

## 🇹🇷 Türkçe

Her komutun ne yaptığıyla birlikte cPanel kurulumu:

1. `rpm --import ...` – AlmaLinux paket imza (GPG) anahtarını ekler; paketlerin doğruluğu doğrulanır.
2. `yum -y update` – paketleri onay sormadan günceller.
3. `sudo dnf update` – `yum`'un yeni sürümü olan `dnf` ile güncelleme.
4. `hostnamectl set-hostname host.example.com` – sunucu adını ayarlar; `hostnamectl` ile doğrulanır.
5. `yum install perl` – kurulum betiğinin gerektirdiği Perl'ü kurar.
6. `curl -o latest -L https://securedownloads.cpanel.net/latest` – cPanel yükleyicisini `/home` içine indirir (`-L` yönlendirmeleri izler).
7. `sh latest` – cPanel kurulumunu başlatır.
8. `systemctl stop firewalld` ve `systemctl disable firewalld` – firewalld'yi durdurur ve açılışta başlamasını engeller (başka bir güvenlik duvarı kullanacaksanız).

## 🇬🇧 English

cPanel installation with an explanation of every command:

1. `rpm --import ...` – imports the AlmaLinux package signing (GPG) key so packages can be verified.
2. `yum -y update` – updates packages without prompting.
3. `sudo dnf update` – the same with `dnf`, the newer `yum`.
4. `hostnamectl set-hostname host.example.com` – sets the server name; verify with `hostnamectl`.
5. `yum install perl` – installs Perl, which the installer needs.
6. `curl -o latest -L https://securedownloads.cpanel.net/latest` – downloads the cPanel installer into `/home` (`-L` follows redirects).
7. `sh latest` – starts the cPanel installation.
8. `systemctl stop firewalld` and `systemctl disable firewalld` – stops firewalld and keeps it from starting at boot (if you use another firewall).

## Commands / Komutlar

```bash
rpm --import https://repo.almalinux.org/almalinux/RPM-GPG-KEY-AlmaLinux
yum -y update
sudo dnf update
sudo hostnamectl set-hostname host.example.com
hostnamectl
sudo yum install perl
cd /home
curl -o latest -L https://securedownloads.cpanel.net/latest
sh latest
systemctl stop firewalld
systemctl disable firewalld
```
