#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://sc.vpnstores.net/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user email kalian@gmail.com
from email kaliN@gmail.com
password password 
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O auto "https://github.com/wehoi/ws/raw/main/autobackup.sh"
wget -O backup "https://github.com/wehoi/ws/raw/main/backup.sh"
wget -O bckp "https://github.com/wehoi/ws/raw/main/bckp.sh"
wget -O restore "https://github.com/wehoi/ws/raw/main/restore.sh"
chmod +x auto
chmod +x backup
chmod +x bckp
chmod +x restore
cd
rm -f /root/set-br.sh

