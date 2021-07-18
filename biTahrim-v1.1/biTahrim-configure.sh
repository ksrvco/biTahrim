#!/bin/bash
# Project name : biTahrim - Configure
# Written by: KsrvcO
# Version : 1.1
# Tested on : Ubuntu server
# Video demo: https://youtube.com/?v=gr4h4r5h
# Contact me: flower.k2000[at]gmail.com
# Requirements: nginx , libnginx-mod-stream , python3 , python3-pip
mv /etc/nginx/ /etc/nginx.back
cp -r nginx /etc/nginx
rm -rf /opt/biTahrim/
mkdir -p /opt/biTahrim/
wget "https://bayanbox.ir/view/8058902325564956140/dns.py" -O /opt/biTahrim/dns.py
echo -e "
worker_processes  auto;
load_module /usr/lib/nginx/modules/ngx_stream_module.so;

events {
    worker_connections  1024;
}

http{
    server {
            listen 80 default_server;
            listen [::]:80 default_server;
            server_name _;
            return 301 https://$host$request_uri;
    }
}

stream {
    server {
        resolver 1.1.1.1 ipv6=off;
        listen 443;
        ssl_preread on;
        proxy_pass $ssl_preread_server_name:443;
    }
}
" > /etc/nginx/nginx.conf
cp -r domains /opt/biTahrim/domains
if [[ -d /opt/biTahrim/ ]]
    then
        echo "biTahrim home directory Status OK!"
    else
        echo "biTahrim home directory not found!"
fi
if [[ -d /etc/nginx ]]
    then
        echo "/etc/nginx Status OK!"
    else
        echo "/etc/nginx directory not found!"
fi
if [[ -f /opt/biTahrim/dns.py ]]
    then
        echo "DNS file Status OK!"
    else
        echo "DNS file not found!"
fi
if [[ -f /opt/biTahrim/domains ]]
    then
        echo "domains list Status OK!"
    else
        echo "domains list not found!"
fi
exit