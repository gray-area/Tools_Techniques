# Nmap .gnmap data extraction techniques

### Extract the IP and Hostnames from a .gnmap file in the same directory.

```sh
#! /bin/bash

# This script is designed to use nmap's grep output. It creates a list of the IP addresses and Hostnames and places them in a file called ip_hostname.txt

##  Example
#   10.1.1.4 computer1.domain.local
#   10.1.1.5 computer2.domain.local

NMAP_FILE=*.gnmap

egrep -v "^#|Status: Up" $NMAP_FILE

```
