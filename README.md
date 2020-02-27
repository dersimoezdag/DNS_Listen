#DNS Listen:


git clone https://github.com/DMOEdetc/DNS_Listen.git
cd DNS_Listen
sudo ./zulassungslisten_updater.sh

For Automated Update

cd /opt/
sudo git clone https://github.com/DMOEdetc/DNS_Listen.git

Make the script to run the script at 1AM on the last day of the week

sudo nano /etc/crontab

Add this line at the end of the file:
0 1 * * */7 root /opt/zulassungslisten_updater.sh
CTRL + X then Y and Enter

sudo ./zulassungslisten_updater.sh

