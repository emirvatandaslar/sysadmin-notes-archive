# CentOS - Plesk install (with SELinux disabled) / CentOS - Plesk Kurulumu (SELinux Kapatma ile)

## 🇹🇷 Türkçe

Sistemi güncelleyip yeniden başlatın, araçları kurun, SELinux'u `disabled` yapın ve Plesk yükleyicisini çalıştırın.

## 🇬🇧 English

Update and reboot, install tools, set SELinux to `disabled` and run the Plesk installer.

## Commands / Komutlar

```bash
yum -y update
reboot
yum -y install wget curl nano
nano /etc/sysconfig/selinux     # SELINUX=disabled  (Ctrl+O, Enter, Ctrl+X)
sestatus
sh <(curl https://autoinstall.plesk.com/one-click-installer || wget -O - https://autoinstall.plesk.com/one-click-installer)
```
