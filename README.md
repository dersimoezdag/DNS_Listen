# DNS Listen:

## Installation:

Eventuell müssen Berechtigungen angepasst werden.

### Für manuelle Updates:

```
git clone https://github.com/DMOEdetc/DNS_Listen.git
cd DNS_Listen
sudo ./zulassungslisten_updater.sh
```

### Für automatisches Update:

Lässt das Skript immer Freitags um 00:00 Uhr einmalig pro Woche laufen

```
cd /opt/
sudo git clone https://github.com/DMOEdetc/DNS_Listen.git
sudo nano /etc/crontab
```

Diese Zeile an das Ende der Datei anfügen:

```
0 0 * * 5   root  /opt//DNS_Listen/zulassungslisten_updater.sh
```

Strg + X, dann mit Y bestätigen und Enter drücken. Nun noch die Berechtigungen anpassen und das Skript das erste mal ausführen.

```
cd DNS_Listen
sudo chmod a+x  zulassungslisten_updater.sh
sudo ./zulassungslisten_updater.sh
```

