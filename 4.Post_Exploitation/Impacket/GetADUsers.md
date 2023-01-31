## GetADUsers.py

You will need at least one valid USERNAME and PASSWORD to use this. 

``GetADUsers.py contoso.com/USERNAME:PASSWORD -dc-ip DOMAINCONTROLLERIP -all | tee /tmp/adusers.txt``

You can further extract the list of users from the adusers.txt file that was just created.

``tail -n +6 /tmp/adusers.txt | cut -d ' ' -f 1 | tee /tmp/domainusers.txt``
