# Sysadmin Notes Archive (TR/EN) / Sistem Yönetimi Not Arşivi (TR/EN)

One-to-one, sanitized publication of a personal collection of hosting/sysadmin notes (cPanel, Plesk, CloudLinux, LiteSpeed, Linux, OpenVPN, network gear, Windows Server). Every note is bilingual (Türkçe + English), and every file has a descriptive name.

Kişisel hosting/sistem yönetimi not koleksiyonunun dosya dosya, gizli bilgilerden arındırılmış yayınıdır. Her not iki dillidir (Türkçe + English) ve her dosyanın açıklayıcı bir adı vardır.

> ⚠️ **Disclaimer / Sorumluluk reddi:** Commands run as root and can cause data loss. Test first and take backups. All IPs, domains and credentials are placeholders. Use only on systems you own or are authorized to manage. / Komutlar root olarak çalışır, veri kaybına yol açabilir. Önce test edin, yedek alın. Tüm IP, alan adı ve kimlik bilgileri örnektir. Yalnızca yetkili olduğunuz sistemlerde kullanın.

## What was removed / Neler çıkarıldı

- Passwords, API tokens, license keys, private IPs, customer domains and database names. / Parolalar, API token'ları, lisans anahtarları, özel IP'ler, müşteri alan adları ve veritabanı adları.
- Notes whose only purpose was circumventing software licensing (activation workarounds, license-file tricks). / Yalnızca yazılım lisanslamasını atlatmaya yönelik notlar.
- Third-party copyrighted scripts (linked to their official sources instead). / Üçüncü taraf telifli betikler (yerine resmi kaynaklarına link verildi).

## Index / Dizin (56 files / dosya)

| File / Dosya | Başlık (TR) | Title (EN) |
|---|---|---|
| [cpanel/apache-reinstall-ea-packages.md](cpanel/apache-reinstall-ea-packages.md) | cPanel - Apache (EasyApache ea- paketleri) Yeniden Kurma | cPanel - Reinstall Apache (EasyApache ea-* packages) |
| [cpanel/clear-exim-queue.md](cpanel/clear-exim-queue.md) | cPanel - Exim Mail Kuyruğunu Tamamen Temizleme | cPanel - Completely clear the Exim mail queue |
| [cpanel/cloudlinux-install-on-cpanel.md](cpanel/cloudlinux-install-on-cpanel.md) | CloudLinux - cPanel Üzerine Kurulum | CloudLinux - Convert a cPanel server |
| [cpanel/cloudlinux-limits-not-updating.md](cpanel/cloudlinux-limits-not-updating.md) | CloudLinux - GB ve RAM Limiti Müşteri Ekranında Görünmüyorsa | CloudLinux - GB/RAM limits not shown in customer panel |
| [cpanel/delete-apache-cpanel-logs.md](cpanel/delete-apache-cpanel-logs.md) | cPanel - Apache ve cPanel Loglarını Silme | cPanel - Delete Apache and cPanel logs |
| [cpanel/delete-backups-trash-error-logs-short.md](cpanel/delete-backups-trash-error-logs-short.md) | cPanel - Backup, Çöp Kutusu ve error_log Silme (Kısa Kopya) | cPanel - Delete backups, trash and error_log (short copy) |
| [cpanel/delete-backups-trash-error-logs.md](cpanel/delete-backups-trash-error-logs.md) | cPanel - Eski Backup, Çöp Kutusu ve error_log Silme | cPanel - Delete old backups, trash and error_log files |
| [cpanel/fix-permissions.md](cpanel/fix-permissions.md) | cPanel - Dosya İzni ve Sahiplik Düzeltme (fixperms.sh) | cPanel - Fix file permissions and ownership (fixperms.sh) |
| [cpanel/install-almalinux-explained.md](cpanel/install-almalinux-explained.md) | AlmaLinux - cPanel Kurulumu (Komut Açıklamalı Anlatım) | AlmaLinux - cPanel install (commands explained) |
| [cpanel/install-almalinux8-short.md](cpanel/install-almalinux8-short.md) | AlmaLinux 8 - cPanel Kurulumu (Kısa Adım Adım) | AlmaLinux 8 - cPanel install (short step-by-step) |
| [cpanel/litespeed-whm-plugin-install.md](cpanel/litespeed-whm-plugin-install.md) | LiteSpeed - WHM Eklentisi Kurulum Scripti (Resmi) | LiteSpeed - WHM plugin installer (official) |
| [cpanel/mail-limit-per-hour.md](cpanel/mail-limit-per-hour.md) | cPanel - Kullanıcı Saatlik Mail Gönderim Sınırı | cPanel - Hourly mail limit per domain |
| [cpanel/mariadb-upgrade-script.sh](cpanel/mariadb-upgrade-script.sh) | cPanel - MariaDB 11.5 Güncelleme Scripti | cPanel - MariaDB 11.5 upgrade script |
| [cpanel/new-server-initial-config.sh](cpanel/new-server-initial-config.sh) | cPanel - Yeni Sunucu İlk Ayar Scripti (IP, Hostname, NS, Disk, WP Toolkit) | cPanel - New server initial configuration script (IP, hostname, NS, disk, WP Toolkit) |
| [cpanel/php-selector-memory-limit.md](cpanel/php-selector-memory-limit.md) | PHP Selector - Memory Limit Değiştirme Scripti | PHP Selector - Memory limit change script |
| [cpanel/php-selector-pdo-driver-error.md](cpanel/php-selector-pdo-driver-error.md) | PHP Selector - "Database could not find driver" Hatası | PHP Selector - "Database could not find driver" error |
| [cpanel/server-setup-notes.md](cpanel/server-setup-notes.md) | cPanel, LiteSpeed ve CloudLinux Kurulum Notları | cPanel, LiteSpeed and CloudLinux setup notes |
| [linux/centos-main-ip-script.sh](linux/centos-main-ip-script.sh) | CentOS - ens192 Ana IP, Gateway ve DNS Ayarlama Scripti | CentOS - ens192 main IP, gateway and DNS script |
| [linux/centos-multi-ip-alias-script.sh](linux/centos-multi-ip-alias-script.sh) | CentOS - Dosyadan Toplu IP Alias Ekleme Scripti | CentOS - Bulk IP alias script from a file |
| [linux/centos7-extend-disk.md](linux/centos7-extend-disk.md) | CentOS 7 - Disk Genişletme (fdisk, resize2fs) | CentOS 7 - Extend disk (fdisk, resize2fs) |
| [linux/centos7-repo-vault.md](linux/centos7-repo-vault.md) | CentOS 7 - Repo Değiştirme | CentOS 7 - Fix the repositories |
| [linux/database-import-example.md](linux/database-import-example.md) | Veritabanı Kullanıcı Şifreleri ve SQL Dosyası İçe Aktarma | Database credentials note and SQL import example |
| [linux/grub-root-password-reset.md](linux/grub-root-password-reset.md) | Linux - GRUB rd.break ile Root Şifre Sıfırlama | Linux - Reset the root password via GRUB rd.break |
| [linux/mailcow-sogo-restart.md](linux/mailcow-sogo-restart.md) | Mailcow - Hostname Değişince SOGo Container Yeniden Başlatma | Mailcow - Restart SOGo after a hostname change |
| [linux/openvpn-install-scripts.md](linux/openvpn-install-scripts.md) | OpenVPN - Kurulum Scriptleri (CentOS, Ubuntu, Debian) | OpenVPN - Install scripts (CentOS, Ubuntu, Debian) |
| [linux/openvpn-server-install-centos7.md](linux/openvpn-server-install-centos7.md) | OpenVPN - CentOS 7 Kurulum Adımları | OpenVPN - CentOS 7 installation steps |
| [linux/openvpn-windows-client-guide.md](linux/openvpn-windows-client-guide.md) | OpenVPN - Windows İstemci Kurulum ve Kullanım Kılavuzu | OpenVPN - Windows client setup and usage guide |
| [linux/redis-install.md](linux/redis-install.md) | CentOS - Redis Kurulumu ve Başlatma | CentOS - Install and start Redis |
| [linux/ubuntu-netplan-static-ip.md](linux/ubuntu-netplan-static-ip.md) | Ubuntu - Netplan ile Statik IP Ayarı Örneği | Ubuntu - Static IP with Netplan (example) |
| [linux/ubuntu-nic-bonding.md](linux/ubuntu-nic-bonding.md) | Ubuntu - İki Ağ Kartını Birleştirme (bond0) | Ubuntu - Bond two network cards (bond0) |
| [linux/ubuntu-root-password-reset.md](linux/ubuntu-root-password-reset.md) | Ubuntu - Root Şifre Sıfırlama (Rehber Linki) | Ubuntu - Reset the root password (guide link) |
| [linux/ubuntu20-lvm-extend-disk.md](linux/ubuntu20-lvm-extend-disk.md) | Ubuntu 20 - LVM Disk Genişletme (lvextend) | Ubuntu 20 - Extend an LVM disk (lvextend) |
| [network/cloudflare-dns-records-template.md](network/cloudflare-dns-records-template.md) | Cloudflare - DNS Kayıtları Şablonu (A, MX, SPF, DKIM, NS) | Cloudflare - DNS records template (A, MX, SPF, DKIM, NS) |
| [network/cloudflare-replace-ip.php](network/cloudflare-replace-ip.php) | Cloudflare API - Tüm Kayıtlarda Eski IP'yi Yeni IP ile Değiştirme (PHP) | Cloudflare API - Replace an old IP with a new one in all records (PHP) |
| [network/juniper-static-arp.md](network/juniper-static-arp.md) | Juniper - IP ve MAC Adresi Kilitleme (Statik ARP) | Juniper - Lock an IP to a MAC address (static ARP) |
| [network/mikrotik-initial-setup.md](network/mikrotik-initial-setup.md) | MikroTik - IP, Rota ve DNS İlk Kurulum Komutları | MikroTik - Initial IP, route and DNS setup |
| [network/open-ping-pe-range.bat](network/open-ping-pe-range.bat) | Windows - ping.pe IP Aralığı Chrome ile Tek Tek Açma | Windows - Open a ping.pe IP range in Chrome one by one |
| [network/plesk-select-subscriptions.js](network/plesk-select-subscriptions.js) | Panel - Site Listesini Arayıp Tek Tek Seçen Tarayıcı Konsol Scripti | Panel - Browser-console script that searches and selects listed sites |
| [plesk/centos-install-with-selinux-off.md](plesk/centos-install-with-selinux-off.md) | CentOS - Plesk Kurulumu (SELinux Kapatma ile) | CentOS - Plesk install (with SELinux disabled) |
| [plesk/change-ip-linux.md](plesk/change-ip-linux.md) | Plesk Linux - Sunucu IP Değiştirme | Plesk Linux - Change the server IP |
| [plesk/db-upgrade-via-panel-ini.md](plesk/db-upgrade-via-panel-ini.md) | Plesk - Panel Üzerinden Veritabanı Sunucusu Güncelleme (panel.ini) | Plesk - Upgrade the database server from the panel (panel.ini) |
| [plesk/freeze-longtasks.md](plesk/freeze-longtasks.md) | Plesk - Panel Donması İçin Takılı Görevleri Silme | Plesk - Fix panel freezing by deleting stuck tasks |
| [plesk/install-almalinux-script.sh](plesk/install-almalinux-script.sh) | AlmaLinux - Plesk Otomatik Kurulum Scripti (DNS ve Firewall Ayarlı) | AlmaLinux - Plesk unattended install script (DNS and firewall configured) |
| [plesk/install-centos7.md](plesk/install-centos7.md) | Plesk - CentOS 7 Kurulumu | Plesk - Install on CentOS 7 |
| [plesk/install-ubuntu-22.md](plesk/install-ubuntu-22.md) | Ubuntu 22.04 - Plesk Kurulumu | Ubuntu 22.04 - Plesk installation |
| [plesk/install-windows.md](plesk/install-windows.md) | Plesk Windows - Kurulum Linki | Plesk Windows - Installation guide link |
| [plesk/mariadb-upgrade-script.sh](plesk/mariadb-upgrade-script.sh) | Plesk - MariaDB 10.6 Güncelleme Scripti | Plesk - MariaDB 10.6 upgrade script |
| [plesk/mysql-grants-and-errors.md](plesk/mysql-grants-and-errors.md) | MySQL - Yetki Verme, Access Denied ve SQL İçe Aktarma Notları | MySQL - Grants, Access Denied and SQL import notes |
| [plesk/pre-install-draft.md](plesk/pre-install-draft.md) | Plesk - Kurulum Öncesi Hazırlık (Eksik Taslak) | Plesk - Pre-install preparation (incomplete draft) |
| [plesk/pre-install-steps.md](plesk/pre-install-steps.md) | Plesk - Kurulum Öncesi Komutlar | Plesk - Pre-install commands |
| [plesk/quick-install-command.md](plesk/quick-install-command.md) | Plesk - Tek Satır Kurulum Komutu | Plesk - One-line install command |
| [plesk/stuck-notifications-longtasks.md](plesk/stuck-notifications-longtasks.md) | Plesk - Takılı Kalan Bildirim ve Görevleri (longtasks) Silme | Plesk - Delete stuck notifications and tasks (longtasks) |
| [plesk/update-and-mariadb-tuning.md](plesk/update-and-mariadb-tuning.md) | Plesk - Güncelleme ve MariaDB my.cnf Optimizasyonu | Plesk - Updates and MariaDB my.cnf tuning |
| [windows/multi-rdp-script.bat](windows/multi-rdp-script.bat) | Windows Server - Çoklu RDP Oturumu (10 Kişi) Açma | Windows Server - Enable multi-session RDP (10 users) |
| [windows/password-reset-utilman.md](windows/password-reset-utilman.md) | Windows - ISO ile Açılıp Parola Sıfırlama | Windows - Reset a password by booting from an ISO (Utilman) |
| [windows/remove-recovery-partition.md](windows/remove-recovery-partition.md) | Windows - Recovery Bölümünü diskpart ile Silme | Windows - Delete the recovery partition with diskpart |

## License / Lisans

[MIT](LICENSE)
