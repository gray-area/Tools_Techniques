#! /bin/bash

# Obtaining user input for IP address and Label. Example: 10.1.1.0
echo "IP address should end in 0, /24 is implied. "

# The folder structure would look like 10.1.1.0_Dev, so the label would be Dev
echo "Label should be PRD, Dev or how its folder is labeled after the underscore. "

read -p "Enter IP Address: " IP
read -p "Enter Label: " LABEL

# Example: 10.1.1.0_Dev/nmap
host_dir=/path/to/folder/structure/${IP}_${LABEL}/nmap

nmap -sS -O -sV --open ${IP}/24 -oA $host_dir/${IP}_Enum &

# Creating a variable for the nmap process ID, then waiting for it to complete before the rest of the script runs.
PID=$!
wait $PID

# Begin parsing functions of the script. The functions are speficially looking for .gnmap files. Two files will be placed in the host_dir location specified above.
NMAP_FILE=$host_dir.gnmap

egrep -v "#^|Status: Up" $NMAP_FILE | cut -d' ' -f2,4- | \
  sed -n -e 's/Ignored.*//p' | \
awk '{print "Host: " $1 " Ports: " NF-1; $1=""; for(i=2; i<NF; i++) { a=a" "$i; }; split(a,s,","); for(e in s) { split(s[e],v,"/"); printf "%-8s %s/%-7s %s\n" , v[2], v[3], v[1], v[5]}; a=""}' > host_ports.txt

egrep -v "^#|Status: Up" $NMAP_FILE | cut -d')' -f2-3 --complement | \
  sed s/')'// | \
cut -d' ' -f1 --complement > ip_hostname.txt
