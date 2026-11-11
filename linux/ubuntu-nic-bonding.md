# Ubuntu - Bond two network cards (bond0) / Ubuntu - İki Ağ Kartını Birleştirme (bond0)

## 🇹🇷 Türkçe

`ip link` ile kart adlarını öğrenin (eno1/eno2 veya eth0/eth1), `ifenslave` ile `bond0` oluşturun. Netplan kullanan sistemlerde `/etc/netplan` altındaki eski bond tanımını silip `netplan apply` çalıştırın.

## 🇬🇧 English

Find card names with `ip link` (eno1/eno2 or eth0/eth1) and create `bond0` with `ifenslave`. On Netplan systems remove the old bond definition under `/etc/netplan` and run `netplan apply`.

## Commands / Komutlar

```bash
ip link
sudo ifenslave bond0 eno1 eno2
sudo ifdown eno1
sudo ifdown eno2
sudo ifup bond0
# Netplan systems:
# cd /etc/netplan  (remove the old bond file)
sudo netplan apply
```
