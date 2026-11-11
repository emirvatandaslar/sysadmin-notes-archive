#!/bin/bash
# EN: Create one IP alias (ifcfg-<iface>:N) per line of an IP list file, then restart networking.
# TR: IP listesi dosyasındaki her satır için bir IP alias (ifcfg-<iface>:N) oluşturur ve ağı yeniden başlatır.
# Usage / Kullanım: ./centos-add-ip-aliases.sh
# Review the variables below first. / Önce aşağıdaki değişkenleri düzenleyin.

INTERFACE="ens192"                              # EN: your interface / TR: arayüz adınız
NETMASK="255.255.252.0"                         # EN: your subnet mask / TR: alt ağ maskeniz
IP_FILE="/root/ips.txt"                         # EN: one IP per line / TR: her satırda bir IP
CONFIG_DIR="/etc/sysconfig/network-scripts"

if [[ ! -f "$IP_FILE" ]]; then
    echo "Error: IP file not found at $IP_FILE"
    exit 1
fi

COUNT=0
while IFS= read -r IP || [[ -n "$IP" ]]; do
    [[ -z "$IP" ]] && continue

    CONFIG_FILE="${CONFIG_DIR}/ifcfg-${INTERFACE}:${COUNT}"
    echo "Creating configuration for ${INTERFACE}:${COUNT} with IP ${IP}"

    cat > "$CONFIG_FILE" <<EOL
DEVICE=${INTERFACE}:${COUNT}
BOOTPROTO=static
ONBOOT=yes
IPADDR=${IP}
NETMASK=${NETMASK}
EOL

    ((COUNT++))
done < "$IP_FILE"

echo "Restarting network service..."
systemctl restart network
echo "Network service restarted. Added $COUNT IPs."
