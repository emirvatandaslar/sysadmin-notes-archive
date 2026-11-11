# cPanel - Delete Apache and cPanel logs / cPanel - Apache ve cPanel Loglarını Silme

## 🇹🇷 Türkçe

Apache ve cPanel log dizinlerini temizler; ayrıca kullanıcı çöp kutuları ve `error_log` dosyalarını siler. Orijinal notta bulunan sistem genelinde `*.tar.gz` silme komutu **tehlikeli olduğu için kaldırıldı**.

## 🇬🇧 English

Clears the Apache and cPanel log directories, plus user trash and `error_log` files. The original note's system-wide `*.tar.gz` delete was **removed because it is dangerous**.

## Commands / Komutlar

```bash
cd /usr/local/apache/logs    && find . -type f -print -exec rm {} \;
cd /usr/local/apache/domlogs && find . -type f -print -exec rm {} \;
cd /usr/local/cpanel/logs    && find . -type f -print -exec rm {} \;
find /home/*/.trash/* -type f -ls -exec rm -f {} \;
find /home/*/public_html -name error_log -type f -ls -exec rm -f {} \;
```
