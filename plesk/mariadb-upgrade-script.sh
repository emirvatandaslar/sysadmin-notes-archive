#!/bin/bash
# EN: Upgrade MariaDB on a Plesk (RHEL-family) server. TAKE A FULL BACKUP FIRST.
# TR: Plesk (RHEL ailesi) sunucuda MariaDB yükseltir. ÖNCE TAM YEDEK ALIN.
# Usage / Kullanım: ./plesk-mariadb-upgrade.sh 10.6

VERSION="${1:-10.6}"

systemctl stop mariadb
curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version="$VERSION"
echo "Repo added / Repo eklendi"
yum clean all
yum install MariaDB-client MariaDB-server MariaDB-compat MariaDB-shared
sed -i 's/bind-address = ::ffff:127.0.0.1/bind-address = 127.0.0.1/g' /etc/my.cnf
systemctl restart mariadb
systemctl restart mysql

MYSQL_PWD="$(cat /etc/psa/.psa.shadow)" mysql_upgrade -uadmin
systemctl restart mariadb
systemctl restart mysql

plesk sbin packagemng -sdf
systemctl stop mysql; killall mysqld
rm -f /etc/init.d/mysql && systemctl daemon-reload
systemctl start mariadb
systemctl enable mariadb
