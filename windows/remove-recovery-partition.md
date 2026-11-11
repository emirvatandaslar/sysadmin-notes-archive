# Windows - Delete the recovery partition with diskpart / Windows - Recovery Bölümünü diskpart ile Silme

## 🇹🇷 Türkçe

⚠️ Doğru diski/bölümü seçtiğinizden emin olun; geri alınamaz. Silinen alan 'unallocated' olur.

## 🇬🇧 English

⚠️ Be sure to pick the right disk/partition; this cannot be undone. The freed space becomes 'unallocated'.

## Commands / Komutlar

```text
diskpart
list disk
select disk X
list partition
select partition Y
delete partition override
```
