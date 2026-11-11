# Juniper - Lock an IP to a MAC address (static ARP) / Juniper - IP ve MAC Adresi Kilitleme (Statik ARP)

## 🇹🇷 Türkçe

Belirtilen IP'yi yalnızca verilen MAC adresine bağlar. Adresler örnektir.

## 🇬🇧 English

Binds the given IP to the given MAC address only. Addresses are examples.

## Commands / Komutlar

```bash
set interfaces irb unit 0 family inet address 192.0.2.1/24 arp 192.0.2.23 mac 00:00:5e:00:53:01 l2-interface ge-0/0/1.0
```
