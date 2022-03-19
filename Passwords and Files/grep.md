If you are looking for passwords that all start with "R"

``grep -h ^R /opt/passwords/* > /tmp/R``

You can then use this in Hashcat like below

``hashcat -w 3 -a 6 -m 13100 myspns.txt /tmp/R ?d?d?d?d``

The ``?d?d?d?d`` is added to the end in order to add 4 numbers to the end of each password guess, 0-9
