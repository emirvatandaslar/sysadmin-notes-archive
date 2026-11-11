#!/bin/bash
# EN: Write main IP, gateway, DNS and a range of extra /32 IPs into ifcfg-<iface> (old file is backed up).
# TR: Ana IP, gateway, DNS ve /32 ek IP aralığını ifcfg-<iface> dosyasına yazar (eski dosya yedeklenir).
# WARNING / UYARI: running this over SSH can cut your connection if values are wrong. Use the console.
#                 Değerler yanlışsa SSH bağlantınız kopar; konsoldan çalıştırın.
# All addresses are documentation examples (RFC 5737) – replace them. / Adresler örnektir, değiştirin.

INTERFACE="ens192"
MAIN_IP="198.51.100.10"
PREFIX="24"
GATEWAY="198.51.100.1"
EXTRA_NET="198.51.100"        # EN: extra IPs = ${EXTRA_NET}.START..END / TR: ek IP'ler
START=20
END=40

CONFIG_FILE="/etc/sysconfig/network-scripts/ifcfg-${INTERFACE}"

if [ -f "$CONFIG_FILE" ]; then
  cp "$CONFIG_FILE" "${CONFIG_FILE}.bak"
  echo "Backup created: ${CONFIG_FILE}.bak"
else
  echo "Config file not found, a new one will be created."
fi

{
  echo "DEVICE=${INTERFACE}"
  echo "BOOTPROTO=none"
  echo "ONBOOT=yes"
  echo "IPADDR0=${MAIN_IP}"
  echo "PREFIX0=${PREFIX}"
  echo "GATEWAY=${GATEWAY}"
  echo "DNS1=8.8.8.8"
  echo "DNS2=8.8.4.4"
  echo "SEARCH=example.com"
  INDEX=1
  for i in $(seq "$START" "$END"); do
    echo "IPADDR${INDEX}=${EXTRA_NET}.${i}"
    echo "PREFIX${INDEX}=32"
    INDEX=$((INDEX + 1))
  done
} > "$CONFIG_FILE"

nmcli connection reload
ifdown "${INTERFACE}" && ifup "${INTERFACE}"
echo "Done / Tamam: $CONFIG_FILE"
