# Hydra Usage

## Options

``-l`` Is used to specify a single user.

``-L`` Is used to specify a list of users.

``-p`` Is used to specify a single password.

``-P`` Is used to specify a list of passwords.

``username:password`` syntax can be used to configure a combination file.

``-C`` Is used to specify the file that was created using the combination syntax file.

## Examples


Single user, multiple passwords targeting SSH on port 2222:
```
hydra -l root -P passwords.txt ssh://1.2.3.4:2222
```
Spray targeting SMB on default port with a single thread:
```
hydra -L users.txt -p password1 -t 1 smb://dc01.domain.local
```
Try a specific username and password across the network:
```
hydra -l bwayne -p P@ssw0rd1! -M windows-hosts.txt smb2
```
Use previously compromised credentials across the network:
```
hydra -C creds.txt -M windows-hosts.txt smb2
```

## Supported Protocols

```
Cisco
CVS
FTP
FTPS
HTTP
HTTPS
HTTP-Proxy
IMAP
IMAPS
LDAP
MSSQL
MySQL
Oracle
POP3
POP3S
Postgres
RDP
Redis
SIP
SMB
SMTP
SMTPS
SNMP
SOCKS5
SSH
SVN
TELNET
TELNETS
VMAuthd
VNC
XMPP
```
