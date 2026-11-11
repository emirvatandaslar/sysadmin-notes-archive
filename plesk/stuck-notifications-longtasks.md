# Plesk - Delete stuck notifications and tasks (longtasks) / Plesk - Takılı Kalan Bildirim ve Görevleri (longtasks) Silme

## 🇹🇷 Türkçe

Bitmemiş `longtasks` kayıtlarını silerek takılı kalan bildirimleri temizler.

## 🇬🇧 English

Deletes unfinished `longtasks` rows to clear stuck notifications.

## Commands / Komutlar

```bash
plesk db -Ne "SELECT id FROM longtasks WHERE status <> 'done'" | while read id; do plesk db "DELETE FROM longtasks WHERE id=$id"; done
```
