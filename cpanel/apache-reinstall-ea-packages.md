# cPanel - Reinstall Apache (EasyApache ea-* packages) / cPanel - Apache (EasyApache ea- paketleri) Yeniden Kurma

## 🇹🇷 Türkçe

Apache bozulduğunda tüm `ea-*` paketlerini yeniden kurar.

## 🇬🇧 English

Reinstalls every `ea-*` package when Apache is broken.

## Commands / Komutlar

```bash
yum reinstall $(rpm -qa --qf "%{NAME}\n"|grep ^ea-|while read pkg;do echo -n "$pkg ";done)
```
