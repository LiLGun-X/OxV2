#!/bin/bash
clear
echo -e "************************************************************"
echo -e "***********************  ยินดีต้อนรับ **************************"
echo -e "*********************** สคริปโดย AJ *************************"
echo -e "*** LINE:aj07 **** Whatsapp:+60179692548 *****FB:javajaja***"
echo -e "************************************************************"
echo -e "************************************************************"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

echo -e " \e[032;1mชนิดซีพียู:\e[0m$cname"
echo -e " \e[032;1mแกน:\e[0m$cores"
echo -e " \e[032;1mความถี่ซีพียู:\e[0m$freq MHz"
echo -e " \e[032;1mแรม:\e[0m$tram MB"
echo -e " \e[032;1mระยะเวลาทำงานของระบบ:\e[0m$up"
echo -e " \e[032;1mผู้ให้บริการ:\e[0m$ISP"
echo -e " \e[032;1mเมือง:\e[0m$CITY"
echo -e " \e[032;1mเวลา:\e[0m$WKT"
echo -e " \e[033;1mไอพี:\e[0m$IPVPS"
echo -e ""
echo -e "************************************************************"
echo -e "* thmenu\menu   : สารบัญคำสั่ง"
echo -e "************************************************************"
echo -e "                     SSH SSHWS AND OPENVPN"
echo -e "* new          : สร้างบัญชี SSH & SSHWS & OpenVPN"
echo -e "* trial        : สร้างบัญชีทดลอง SSH & OpenVPN"
echo -e "* renew        : ต่ออายุบัญชี SSH & SSHWS & OpenVPN"
echo -e "* deluser      : ลบบัญชี SSH & SSHWS & OpenVPN"
echo -e "* check        : แสดงบัญชีผู้ใช้งาน SSH & SSHWS & OpenVPN"
echo -e "* user         : แสดงบัญชี SSH & SSHWS & OpenVPN ทั้งหมด"
echo -e "* delete       : ลบบัญชี SSH & SSHWS & OpenVPN ที่หมดอายุแล้ว"
echo -e "* autokill     : ตั้งค่าการเข้าใช้งานหลายบัญชี"
echo -e "* multi        : แสดงบัญชีที่เข้าใช้งานหลายเครื่อง"
echo -e "* restart      : รีสตาร์ท  Dropbear, Squid3, OpenVPN และ SSH"
echo -e "* limit        : จำกัดการเข้าใช้งานหลายบัญชีสำหรับ OVPN"
echo -e "************************************************************"
echo -e "                     WIREGUARD"
echo -e "* wg           : สร้างบัญชี  Wireguard"
echo -e "* wgd          : ลบบัญชี  Wireguard"
echo -e "* wgc          : ตรวจสอบผู้ใช้งาน Wireguard"
echo -e "* wgr          : ต่ออายุบัญชี  Wireguard"
echo -e "************************************************************"
echo -e "                     VMESS"
echo -e "* vr           : สร้างบัญชี VMESS"
echo -e "* vrd          : ลบบัญชี VMESS"
echo -e "* vrc          : ตรวจสอบผู้ใช้งานบัญชี VMESS"             
echo -e "* vrr          : ต่ออายุบัญชี VMESS"                     
echo -e "************************************************************"
echo -e "                     TROJAN"
echo -e "* tj           : สร้างบัญชี TROJAN"
echo -e "* tjd          : ลบบัญชี TROJAN"
echo -e "* tjc          : ตรวจสอบผู้ใช้งานบัญชี TROJAN"             
echo -e "* trr          : ต่ออายุบัญชี TROJAN"
echo -e "************************************************************"
echo -e "                     TROJAN-Go" 
echo -e "* tjg          : สร้างบัญชี TROJAN-Go" 
echo -e "* tjgd         : ลบบัญชี TROJAN-Go"
echo -e "* tjgc         : ตรวจสอบผู้ใช้งานบัญชี TROJAN-Go"             
echo -e "* trgr         : ต่ออายุบัญชี TROJAN-Go"
echo -e "************************************************************"
echo -e "                     VLESS"
echo -e "* vs           : สร้างบัญชี VLESS"
echo -e "* vsd          : ลบบัญชี VLESS"
echo -e "* vsc          : ตรวจสอบผู้ใช้งานบัญชี VLESS"             
echo -e "* vsr          : ต่ออายุบัญชี VLESS"
echo -e "************************************************************"
echo -e "                     SHADOWSOCK-R"
echo -e "* ssr          : สร้างบัญชี SSR"
echo -e "* ssrd         : ลบบัญชี SSR"
echo -e "* more         : แสดงเมนู SSR เพิ่มเติม"             
echo -e "* ssrr         : ต่ออายุบัญชี SSR"
echo -e "************************************************************"
echo -e "                     SHADOWSOCK-S OBFS"
echo -e "* ss           : สร้างบัญชี SS"
echo -e "* sd           : ลบบัญชี SS"
echo -e "* sc           : ตรวจสอบผู้ใช้งานบัญชี SS"             
echo -e "* sr           : ต่ออายุบัญชี SS"
echo -e "************************************************************"
echo -e "                     CLOUDFLARE" 
echo -e "* cff          : เพิ่มโปรไฟล์ CloudFlare" 
echo -e "* cfd          : CloudFlare เพิ่มเติม" 
echo -e "* cfh          : เสริมบัคโฮสไปยังโดเมน CloudFlare" 
echo -e "************************************************************"  
echo -e "                       BOT PANEL" 
echo -e "* insbot       : รันบอต" 
echo -e "************************************************************"  
echo -e "                    ตั้งค่าระบบ"
echo -e "* add-host     : เพิ่มโฮตส์หรือซับโดเมน"
echo -e "* cert         : ต่ออายุ Certificate ของบัญชี V2ray" 
echo -e "* port         : แก้ไขหรือเปลี่ยนพอร์ต"
echo -e "* auto         : แบ็คข้อมูลอัตโนมัติ"
echo -e "* backup       : แบ็คอัพข้อมูล "
echo -e "* restore      : รีสตอร์ข้อมูล "
echo -e "* web          : ติดตั้งWebmin"
echo -e "* kernel       : อัพเดทKernel"
echo -e "* ram          : ตรวจสอบแรม"
echo -e "* reboot       : รีบูตเครื่อง"
echo -e "* speedtest    : ตรวจสอบความเร็วเซิฟเวอร์"
echo -e "* update       : อัพเดทสคริป"
echo -e "* info         : แสดงข้อมูลระบบ"
echo -​e "* reboot       : รีสตาร์ท​เครื่อง"
echo -e "* exit         : ออกจากระบบ"
echo -e "************************************************************"
echo -e " ขอบคุณมากที่ใช้บริการของเรา"
echo -e " Copyright ©AJ"
echo -e ""
