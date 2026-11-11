# Ubuntu 20 - Extend an LVM disk (lvextend) / Ubuntu 20 - LVM Disk Genişletme (lvextend)

## 🇹🇷 Türkçe

Rehber: <https://packetpushers.net/blog/ubuntu-extend-your-default-lvm-space/>. `cfdisk` ile boş alanı genişletin, `pvresize`, `lvextend` ve `resize2fs` çalıştırın.

## 🇬🇧 English

Guide: <https://packetpushers.net/blog/ubuntu-extend-your-default-lvm-space/>. Grow the free space with `cfdisk`, then `pvresize`, `lvextend` and `resize2fs`.

## Commands / Komutlar

```bash
cfdisk                      # Resize -> Write -> yes -> Quit
pvresize /dev/sda3
lvdisplay                   # note the LV Path
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/ubuntu-vg/ubuntu-lv   # XFS: xfs_growfs /
df -h
```
