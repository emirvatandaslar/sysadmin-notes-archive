# CloudLinux - GB/RAM limits not shown in customer panel / CloudLinux - GB ve RAM Limiti Müşteri Ekranında Görünmüyorsa

## 🇹🇷 Türkçe

CloudLinux'ta GB ve RAM düzenlemesi yapıldığı halde müşteri ekranına yansımıyorsa `lvestats` servisini kontrol edip yeniden başlatın.

## 🇬🇧 English

If GB/RAM changes made on CloudLinux do not show up in the customer's panel, check and restart the `lvestats` service.

## Commands / Komutlar

```bash
systemctl status lvestats.service
systemctl restart lvestats.service
```
