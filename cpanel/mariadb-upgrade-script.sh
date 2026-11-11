#!/bin/bash
# TR: MariaDB 11.5.1 yükseltme betiği (orijinal not "cPanel" adıyla duruyordu ama komutlar Plesk'e özeldir: /etc/psa, plesk sbin).
# EN: MariaDB 11.5.1 upgrade script (the original note was titled "cPanel" but the commands are Plesk-specific: /etc/psa, plesk sbin).
# TR: ÖNCE TAM YEDEK ALIN. / EN: TAKE A FULL BACKUP FIRST.
systemctl stop mariadb
curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version=11.5.1
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
