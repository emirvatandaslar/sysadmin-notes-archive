# cPanel, LiteSpeed and CloudLinux setup notes / cPanel, LiteSpeed ve CloudLinux Kurulum Notları

## 🇹🇷 Türkçe

Sunucu kurulumunda kullanılan not derlemesi. Şifreler, lisans anahtarları ve özel alan adları **kaldırıldı**; yerlerine yer tutucu konuldu. Lisanslar için kendi anahtarlarınızı kullanın.

Akış: cPanel kurulumu → NS ayarı (WHM) → reboot → Tweak Settings'te `ioncube` / cPanel PHP loader açma → CloudLinux → LiteSpeed → Imunify360 → Softaculous → EasyApache 4 PHP ayarları. CloudLinux 404 verirse `lvemanager` kurun; LiteSpeed'e geçiş (switch) WHM eklentisinden yapılır. Plesk sunucuda takılan bildirimler için `longtasks` temizleme komutu ve `plesk repair --all` kullanılır.

## 🇬🇧 English

A collection of notes used when setting up servers. Passwords, license keys and private domains were **removed** and replaced with placeholders. Use your own license keys.

Flow: install cPanel → set NS (WHM) → reboot → enable `ioncube` / cPanel PHP loader in Tweak Settings → CloudLinux → LiteSpeed → Imunify360 → Softaculous → EasyApache 4 PHP tweaks. If CloudLinux returns 404 install `lvemanager`; switching to LiteSpeed is done from the WHM plugin. On Plesk, use the `longtasks` cleanup for stuck notifications and `plesk repair --all`.

## Commands / Komutlar

```bash
# --- cPanel base install ---
rpm --import https://repo.almalinux.org/almalinux/RPM-GPG-KEY-AlmaLinux
yum -y update
sudo hostnamectl set-hostname host.example.com
sudo yum install perl
cd /home && curl -o latest -L https://securedownloads.cpanel.net/latest && sh latest
systemctl stop firewalld && systemctl disable firewalld

# --- CloudLinux (needs your own key) ---
wget http://repo.cloudlinux.com/cloudlinux/sources/cln/cpanel2cl
sh cpanel2cl -k YOUR_CLOUDLINUX_KEY

# --- LiteSpeed WHM plugin (needs a LiteSpeed license) ---
cd /usr/src
wget http://www.litespeedtech.com/packages/cpanel/lsws_whm_plugin_install.sh
sh ./lsws_whm_plugin_install.sh
rm -f lsws_whm_plugin_install.sh
rpm -e wp-toolkit-cpanel          # optional: remove WP Toolkit

# --- Imunify360 ModSecurity rules (LiteSpeed) ---
# https://files.imunify360.com/static/modsec/v2/meta_imunify360-full-litespeed.yaml

# --- Softaculous (official installer) ---
wget -N http://files.softaculous.com/install.sh
chmod 755 install.sh
./install.sh

# --- Roundcube / sabre-vobject workaround ---
cd /usr/local/cpanel/base/3rdparty/roundcube
/opt/cpanel/composer/bin/composer --ignore-platform-req=ext-iconv --ignore-platform-req=ext-ldap require sabre/vobject

# --- CloudLinux: "cagefs is not installed or broken" ---
yum install cagefs --enablerepo=cloudlinux-updates-testing

# --- CloudLinux: "The received data is wrong ... whmapi exited with code 8" ---
mkdir /home/ACCOUNT/alt-php-temp
mv -v /home/ACCOUNT/.cagefs/opt/alt/php* /home/ACCOUNT/alt-php-temp/
cagefsctl --force-update
cagefsctl -M

# --- Plesk: stuck notifications / repair ---
plesk db -Ne "SELECT id FROM longtasks WHERE status <> 'done'" | while read id; do plesk db "DELETE FROM longtasks WHERE id=$id"; done
plesk repair --all
```
