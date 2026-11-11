# CentOS 7 - Fix the repositories / CentOS 7 - Repo Değiştirme

## 🇹🇷 Türkçe

Orijinal not özel bir mirror'dan `CentOS-Base.repo` indiriyordu; bu yayınlanmadı. CentOS 7 EOL olduğu için repoları `vault.centos.org`'a yönlendirin.

## 🇬🇧 English

The original note downloaded `CentOS-Base.repo` from a private mirror, which was not published. CentOS 7 is EOL, so point repos to `vault.centos.org`.

## Commands / Komutlar

```bash
sed -i 's|^mirrorlist=|#mirrorlist=|; s|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|' /etc/yum.repos.d/CentOS-*.repo
yum clean all && yum makecache && yum -y update
```
