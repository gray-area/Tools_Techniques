# Nmap .gnmap data extraction techniques

### Initial nmap scan

```bash
#! /bin/bash

echo "IP address should end in 0, /24 is implied. "

read -p "Enter IP Address: " IP

nmap -sS -O -sV --open ${IP}/24 -oA file/destination/here/${IP}_Enum
```

### Extract the IP and Hostnames from a .gnmap file in the same directory.

```bash
#! /bin/bash

# This script is designed to use nmap's grep output. It creates a list of the IP addresses and Hostnames and places them in a file called ip_hostname.txt

##  Example Output
#   10.1.1.4 computer1.domain.local
#   10.1.1.5 computer2.domain.local

NMAP_FILE=*.gnmap

egrep -v "^#|Status: Up" $NMAP_FILE | cut -d')' -f2-3 --complement | \
  sed s/')'// | \
cut -d' ' -f1 --complement > ip_hostname.txt
```

### Extract the IP addresses and Ports from .gnmap file

```bash
# /bin/bash

# This script is used to parse through nmap's grep output file. it is formatted with the IP, Number of Ports, Port Status, Protocol/Port# and service.

## EXAMPLE OUTPUT
#  Host: 10.1.1.5 Ports 4
#  open  tcp/ 135   msrpc
#  open  tcp/ 139   netbios-ssn
#  open  tcp/ 445   microsoft-ds
#  open  tcp/ 3389   ms-wbt-server

NMAP_FILE=*gnmap

egrep -v "#^|Status: Up" $NMAP_FILE | cut -d' ' -f2,4- | \
  sed -n -e 's/Ignored.*//p' | \
awk '{print "Host: " $1 " Ports: " NF-1; $1=""; for(i=2; i<NF; i++) { a=a" "$i; }; split(a,s,","); for(e in s) { split(s[e],v,"/"); printf "%-8s %s/%-7s %s\n" , v[2], v[3], v[1], v[5]}; a=""}'
```
