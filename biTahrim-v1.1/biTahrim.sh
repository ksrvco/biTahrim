#!/bin/bash
# Project name : biTahrim
# Written by: KsrvcO
# Version : 1.1
# Tested on : Ubuntu server
# Video demo: https://www.aparat.com/v/qwUVh
# Contact me: flower.k2000[at]gmail.com
# Requirements: nginx , libnginx-mod-stream , python3 , python3-pip
reset
echo -e "

██████╗░██╗████████╗░█████╗░██╗░░██╗██████╗░██╗███╗░░░███╗
██╔══██╗██║╚══██╔══╝██╔══██╗██║░░██║██╔══██╗██║████╗░████║
██████╦╝██║░░░██║░░░███████║███████║██████╔╝██║██╔████╔██║
██╔══██╗██║░░░██║░░░██╔══██║██╔══██║██╔══██╗██║██║╚██╔╝██║
██████╦╝██║░░░██║░░░██║░░██║██║░░██║██║░░██║██║██║░╚═╝░██║
╚═════╝░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═╝
                                                by KsrvcO

Project name : biTahrim
Version: 1.0
Written by : KsrvcO
Tested on: Ubuntu server
Contact me: flower.k2000[at]gmail.com

"
read -p "[+] Enter Your Public IP for start: " pubip
pkill -9 nginx
/usr/sbin/nginx
/usr/bin/python3 /opt/biTahrim/dns.py --ip $pubip --whitelist /opt/biTahrim/domains
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start dns: $status"
  exit $status
