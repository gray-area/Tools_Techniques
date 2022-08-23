# Host Scanning Techniques / Tools

## Nmap


Active Recon w/ Nmap

``nmap -sn -PE <target>``

Half-Open Recon w/ Nmap

``nmap -sS -sV -T4 <target>``

Firewall bypass w/ Nmap

``nmap -f –mtu=512 <target>``

## Netdiscover

Active or Passive Recon with Netdiscover

``netdiscover -r <target>`` Active
`` ``

## Crackmap

Post-Exploitation Scanning w/ CrackMapExec

``crackmapexec <target>`` (Example target: 192.168.0.1/24)

## Unicornscan

Active Recon with UnicornScan

`` us -mT -Iv <target>:a -r 3000 -R 3 && us -mU -Iv <target>:a -r 3000 -R 3``

## HPING3

Recon with HPING3

``hping3 –scan known <target>``

## Netcat

Recon with Netcat

``nc -nvz <target> 1-1024``

Banner Grabbing with Netcat

``nc -nv <target> <port number>``

## Masscan

Recon with Masscan

``masscan <network> -p80 –banners –source-ip <target>``



