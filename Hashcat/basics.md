## Hashcat Basics

``0`` : Straight. This mode uses thr dictionary words as they appear in their dictionary, with rules applied specified with the ``-r``.

``1`` : Combination. This mode will take each word in the dictionary and appent it to each word in the dictionary. Also uses the ``-r``.

``3`` : Brute Force. This mode tries all potential passwords in a given keyspace, iterating through all characters. 

``6`` : Hybrid+Mask. THis mode uses a dictionary, but then applies a brute force alteration against it, masking off characters of the original word, to prvent changes. 

Mode ``0`` is the most common method used.
