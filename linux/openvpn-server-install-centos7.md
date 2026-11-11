# OpenVPN - CentOS 7 installation steps / OpenVPN - CentOS 7 Kurulum Adımları

## 🇹🇷 Türkçe

Orijinal not özel bir sunucudan betik indiriyordu; bunun yerine topluluk betiği `Nyr/openvpn-install` kullanılır. Üretilen `.ovpn` dosyasını SFTP ile indirin (özel anahtar içerir, güvenli paylaşın).

## 🇬🇧 English

The original note downloaded a script from a private server; the community script `Nyr/openvpn-install` is used instead. Download the generated `.ovpn` via SFTP (it contains a private key; share it securely).

## Commands / Komutlar

```bash
yum install -y wget
wget https://raw.githubusercontent.com/Nyr/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh
```
