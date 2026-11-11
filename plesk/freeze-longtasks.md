# Plesk - Fix panel freezing by deleting stuck tasks / Plesk - Panel Donması İçin Takılı Görevleri Silme

## 🇹🇷 Türkçe

Panel donuyorsa aynı `longtasks` temizliği işe yarar (önceki notla aynı komut).

## 🇬🇧 English

If the panel freezes, the same `longtasks` cleanup helps (same command as the previous note).

## Commands / Komutlar

```bash
plesk db -Ne "SELECT id FROM longtasks WHERE status <> 'done'" | while read id; do plesk db "DELETE FROM longtasks WHERE id=$id"; done
```
