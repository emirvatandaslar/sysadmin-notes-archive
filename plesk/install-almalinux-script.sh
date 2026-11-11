#!/bin/bash
# EN: Prepare AlmaLinux (updates, tools, DNS, firewall off) and run the official Plesk installer.
# TR: AlmaLinux'u hazırlar (güncelleme, araçlar, DNS, firewall kapatma) ve resmi Plesk yükleyicisini çalıştırır.
# NOTE / NOT: this overwrites /etc/resolv.conf and disables firewalld – adjust to your policy.
#             /etc/resolv.conf dosyasının üzerine yazar ve firewalld'yi kapatır; kendi politikanıza göre uyarlayın.

rpm --import https://repo.almalinux.org/almalinux/RPM-GPG-KEY-AlmaLinux
yum -y update
yum -y install nano curl wget

cat > /etc/resolv.conf <<EOF
nameserver 8.8.8.8
nameserver 8.8.4.4
nameserver 1.1.1.1
EOF

systemctl stop firewalld
systemctl disable firewalld

if command -v curl &> /dev/null; then
    sh <(curl -fsSL https://autoinstall.plesk.com/one-click-installer)
elif command -v wget &> /dev/null; then
    sh <(wget -O - https://autoinstall.plesk.com/one-click-installer)
else
    echo "curl or wget not found / curl veya wget bulunamadı"
    exit 1
fi
