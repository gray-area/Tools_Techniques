SUID (Set-user Identification) and SGID (Set-group Identification) allows files to be executed with the permission level of the file owner or the group owner, respectively.

You will notice these files have an “s” bit set showing their special permission level.

```find / -type f -perm -04000 -ls 2>/dev/null``` will list files that have SUID or SGID bits set.

A good practice would be to compare executables on this list with the ones listed here:

``` 
GTFOBins (https://gtfobins.github.io)
```

Clicking on the SUID button will filter binaries known to be exploitable when the SUID bit is set (you can also use this link for a pre-filtered list https://gtfobins.github.io/#+suid).


At this stage, we have two basic options for privilege escalation: reading the /etc/shadow file or adding our user to /etc/passwd.


Below is a hypothetical, if the ``` etc/shadow ``` and the ``` etc/passwd ``` were/are readable, based on SUID for nano being set. 


```nano /etc/shadow``` will print the contents of the ```/etc/shadow``` file. We can now use the unshadow tool to create a file crackable by ```John the Ripper```. To achieve this, unshadow needs both the /etc/shadow and /etc/passwd files.


The unshadow tool’s usage can be seen below;
```unshadow passwd.txt shadow.txt > passwords.txt ```



With the correct wordlist and a little luck, John the Ripper can return one or several passwords in cleartext. 


Another option would be to add a new user that has root privileges. This would help us circumvent the tedious process of password cracking. Below is an easy way to do it:


We will need the hash value of the password we want the new user to have. This can be done quickly using the openssl tool on Kali Linux.






We will then add this password with a username to the ```/etc/passwd``` file.





Once our user is added (please note how ```root:/bin/bash``` was used to provide a root shell) we will need to switch to this user and hopefully should have root privileges.




