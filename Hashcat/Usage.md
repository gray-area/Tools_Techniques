# Usage

For Help
``hashcat -h``

## Examples
``hashcat -w 3 -a 0 -m 1000 /tmp/hashes /tmp/rockyou.txt --show``

``-w 3`` Use as much computing power, while preserving GUI access.

``-a 0`` Attack mode 0

``-m 1000`` Specify hash type for NT

``/tmp/hashes`` Specify file with saved hashes

``/tmp/rockyou.txt`` Specify password dictionary

``--show`` shows the value of the hashed password if it has been cracked. 

<br>

If you are using zsh on Kali, you will need to escape the ``?`` when adding to the hashcat options by using a ``\``.

For a 4 digit pin, this would look like:

``hashcat -a 3 -m 0 hash.txt \?d\?d\?d\?d``
