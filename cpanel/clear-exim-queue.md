# cPanel - Completely clear the Exim mail queue / cPanel - Exim Mail Kuyruğunu Tamamen Temizleme

## 🇹🇷 Türkçe

Mailler (özellikle spam saldırılarında) Exim kuyruğunda birikir. WHM'den silmeye çalışınca MySQL hatası alıyorsanız komut satırından temizleyin. ⚠️ Kuyruktaki **tüm** mailler (meşru olanlar dahil) kalıcı olarak silinir; önce spam kaynağını bulun.

## 🇬🇧 English

Mail (especially during spam attacks) piles up in the Exim queue. If WHM shows a MySQL error when deleting, clear it from the shell. ⚠️ **All** queued mail, including legitimate messages, is permanently deleted; find the spam source first.

## Commands / Komutlar

```bash
rm -rfv /var/spool/exim/input/*
```
