## Crackstation Wordlist

I am using a cloud instance to perform the password cracking, so a 15GB file would not work for me. I decided to split the file into equal 3GB files that could be run individually.

``split -d -b 1.5G --additional-suffix=.txt crackstation.txt crackstation_``

This created NTH files as shown below:

```
  crackstation_00.txt 3.0GB
  crackstation_01.txt 3.0GB
  crackstation_02.txt 3.0GB
  crackstation_03.txt 3.0GB
  crackstation_04.txt 3.0GB
  crackstation_05.txt 3.0GB
```

The wordlist contained a lot characters that I did not want in my lists, so I removed them using ``strings``. This will automatically remove the non-printable ascii characters

``
strings crackstation_00.txt > crackstation_00_clean.txt
``

I had no use for the files that contained the characters that I didnt need, so I removed them.

``
rm -f crackstation_00.txt
``

Because the non-ascii characters messed up the sorting, I ran the new lists through a sort function to sort them and remove duplicates.

``
pw-inspector -lunp crackstation_00_clean.txt | sort | uniq > crackstation_00.txt
``
