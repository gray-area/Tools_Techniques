# Hashcat Basics

In order for Hashcat to work, you will __need__ the following, at a minimum:

1. What type of hash you are using
2. What wordlist you are using, or what type of attack module could be used.

There are 3 tools that are commonly used to determine a hash type:

1. ``hashid``
2. ``hash-identifier``
3. ``crackstation.com``

``0`` : Straight. This mode uses thr dictionary words as they appear in their dictionary, with rules applied specified with the ``-r``.

``1`` : Combination. This mode will take each word in the dictionary and appent it to each word in the dictionary. Also uses the ``-r``.

``3`` : Brute Force. This mode tries all potential passwords in a given keyspace, iterating through all characters. 

``6`` : Hybrid+Mask. THis mode uses a dictionary, but then applies a brute force alteration against it, masking off characters of the original word, to prvent changes. 

Mode ``0`` is the most common method used.

Running hashcat with the ``--show`` option, __AFTER__ the hash has been cracked, will show the cracked password, if the hash has been cracked. 
