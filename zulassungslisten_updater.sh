#!/bin/bash
# Dieses Script fügt die hier erstellte Zulassungsliste automatisch in Pi-hole ein.
#================================================================================
TICK="[\e[32m ✔ \e[0m]"
PIHOLE_LOCATION="/etc/pihole"
GRAVITY_UPDATE_COMMAND="pihole -g"

echo -e "\n"
echo -e "\n"
echo -e " \e[1m Updater created by DOE \e[0m"
echo -e " \e[1m https://github.com/DMOEdetc/ \e[0m"
echo -e "\n"
echo -e " \e[1m Das Script wird die Zulassungsliste aus dem Repo holen und in whitelist.txt übertragen. \e[0m"
echo -e "\n"
echo -e "\n"
sleep 1
echo -e "\n"

if [ "$(id -u)" != "0" ] ; then
	echo "This script requires root permissions. Please run this as root!"
	exit 2
fi

curl -sS https://raw.githubusercontent.com/DMOEdetc/DNS_Listen/master/listen/zulassungsliste.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
echo -e " ${TICK} \e[32m Füge Domains zur whitelist hinzu... \e[0m"
sleep 0.1
echo -e " ${TICK} \e[32m Entferne Duplikate... \e[0m"
mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.old && cat "${PIHOLE_LOCATION}"/whitelist.txt.old | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

echo -e " [...] \e[32m Pi-hole gravity erstellt die Listen jetzt neu. Das kann etwas dauern... \e[0m"
${GRAVITY_UPDATE_COMMAND} > /dev/null
 
echo -e " ${TICK} \e[32m Pi-hole's gravity wurde geupdated \e[0m"
echo -e " ${TICK} \e[32m Fertig! \e[0m"
echo -e "\n\n"
