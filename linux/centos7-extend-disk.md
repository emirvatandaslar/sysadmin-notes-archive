# CentOS 7 - Extend disk (fdisk, resize2fs) / CentOS 7 - Disk Genişletme (fdisk, resize2fs)

## 🇹🇷 Türkçe

⚠️ Önce snapshot alın. `fdisk`'te bölümü silip **aynı başlangıç sektörüyle** yeniden oluşturun, bitişi diskin sonu yapın, `w` ile yazın, yeniden başlatın ve `resize2fs` çalıştırın. Güvenli alternatif: `growpart /dev/sda 1`.

## 🇬🇧 English

⚠️ Take a snapshot first. In `fdisk` delete the partition and recreate it with the **same start sector**, ending at the end of the disk, write with `w`, reboot and run `resize2fs`. Safer alternative: `growpart /dev/sda 1`.

## Commands / Komutlar

```bash
sudo fdisk /dev/sda      # d, n (same start sector), w
reboot
sudo resize2fs /dev/sda1
df -h
```
