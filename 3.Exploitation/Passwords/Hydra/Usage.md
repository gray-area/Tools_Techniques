# Hydra Usage

## Options

``-l <name>`` Is used to specify a single user.

``-L <file>`` Is used to specify a list of users.

``-p <pass>`` Is used to specify a single password.

``-P <file>`` Is used to specify a list of passwords.

``username:password`` syntax can be used to configure a combination file.

``-C`` Is used to specify the file that was created using the combination syntax file.

``-s <port>`` Is used to specify a custom port.

``-f`` Exit if one login and password combination is found, per host

``-F`` Exit if one login and password combination is found, global

``-t`` Number of connects in parallel, per target (default 16)

``-T`` Number of connects in parallel, global (default 64)

``-w`` Wait time for response (default 32)

``-q`` Ignore errors

``-S`` SSL connect

``-u`` Loop around users and not passwords (effective with -x)

``-v`` Verbose

``-V`` Show login+pass for each attempt

``-d`` Debug mode

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
