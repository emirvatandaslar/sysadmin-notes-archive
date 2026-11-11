# Plesk Linux - Change the server IP / Plesk Linux - Sunucu IP Değiştirme

## 🇹🇷 Türkçe

`ip link` ile arayüz adını öğrenin, `/root/ip` dosyasına eski → yeni IP eşlemesini yazın (adresler örnektir), sonra `ipmanage --remap` çalıştırın.

## 🇬🇧 English

Find the interface with `ip link`, write the old → new IP mapping to `/root/ip` (addresses are examples), then run `ipmanage --remap`.

## Commands / Komutlar

```bash
ip link
nano /root/ip
# content / içerik:
# ens192 203.0.113.10 255.255.255.0 -> ens192 198.51.100.20 255.255.255.0
plesk bin ipmanage --remap /root/ip
```
