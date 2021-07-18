#!/bin/bash
# Project name : biTahrim - Requirements
# Written by: KsrvcO
# Version : 1.1
# Tested on : Ubuntu server
# Video demo: https://youtube.com/?v=gr4h4r5h
# Contact me: flower.k2000[at]gmail.com
# Requirements: nginx , libnginx-mod-stream , python3 , python3-pip
dpkg -s nginx &> /dev/null
	if [ $? -eq 0 ]; then
		echo " [+] Nginx installed on the host."
	else
		echo " [!] First install Nginx webserver. Exiting..."
	fi
dpkg -s libnginx-mod-stream &> /dev/null
	if [ $? -eq 0 ]; then
		echo " [+] libnginx-mod-stream installed on the host."
	else
		echo " [!] First install libnginx-mod-stream. Exiting..."
	fi
dpkg -s python3 &> /dev/null
	if [ $? -eq 0 ]; then
		echo " [+] python3 installed on the host."
	else
		echo " [!] First install python3. Exiting..."
	fi

