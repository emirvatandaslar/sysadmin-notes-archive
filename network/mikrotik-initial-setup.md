# MikroTik - Initial IP, route and DNS setup / MikroTik - IP, Rota ve DNS İlk Kurulum Komutları

## 🇹🇷 Türkçe

Arayüze IP verir, varsayılan rotayı ve DNS sunucularını ayarlar. Adresler örnektir.

## 🇬🇧 English

Assigns an IP, sets the default route and DNS servers. Addresses are examples.

## Commands / Komutlar

```text
/ip address add address=192.0.2.10/24 interface=ether1
/ip route add dst-address=0.0.0.0/0 gateway=192.0.2.1
/ip dns set servers=8.8.8.8,1.1.1.1
```
