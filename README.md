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
0 0 * * 5 /opt/zulassungslisten_updater.sh
```

Strg + X, dann mit Y bestätigen und Enter drücken.

```
sudo ./zulassungslisten_updater.sh
```

