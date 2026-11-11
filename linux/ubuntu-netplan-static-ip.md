# Ubuntu - Static IP with Netplan (example) / Ubuntu - Netplan ile Statik IP Ayarı Örneği

## 🇹🇷 Türkçe

`/etc/netplan/*.yaml` örneği; arayüz adı ve adresler örnektir. Eski `gateway4` anahtarı yerine `routes` kullanılır.

## 🇬🇧 English

Example `/etc/netplan/*.yaml`; interface name and addresses are examples. `routes` replaces the deprecated `gateway4`.

## Commands / Komutlar

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    ens32:
      addresses:
        - 192.0.2.100/24
      routes:
        - to: default
          via: 192.0.2.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]
# then: sudo netplan apply
```
