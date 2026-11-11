# Linux - Reset the root password via GRUB rd.break / Linux - GRUB rd.break ile Root Şifre Sıfırlama

## 🇹🇷 Türkçe

⚠️ Yalnızca yetkili olduğunuz makinelerde kullanın. GRUB'da `e` → `linux` satırının sonuna `rd.break` → `Ctrl+x`. Sonra aşağıdaki komutları çalıştırın.

## 🇬🇧 English

⚠️ Use only on machines you are authorized to administer. In GRUB press `e` → append `rd.break` to the `linux` line → `Ctrl+x`. Then run the commands below.

## Commands / Komutlar

```bash
mount -o remount,rw /sysroot
chroot /sysroot
passwd root
touch /.autorelabel
exit
exit
```
