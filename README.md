#DNS Listen:

##Installation:
###Für Manuelle Updates:

```
git clone https://github.com/DMOEdetc/DNS_Listen.git
cd DNS_Listen
sudo ./zulassungslisten_updater.sh
```

###FürAutomatisches Update:

Lässt das Skript um 01:00 Uhr einmalig pro Woche laufen

```
cd /opt/
sudo git clone https://github.com/DMOEdetc/DNS_Listen.git

sudo nano /etc/crontab
```

Diese Zeile an das Ende der Datei anfügen:

```
0 1 * * */7 root /opt/zulassungslisten_updater.sh
```

Strg + X, dann mit Y bestätigen und Enter drücken.

```
sudo ./zulassungslisten_updater.sh
```

