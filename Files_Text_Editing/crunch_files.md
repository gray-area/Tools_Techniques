# Create a file wordlist

Known file: 1010_1234.pdf

``crunch 13 13 0123456789 -t 10%%_%%%%.pdf -c 100000 -o ~/Tools/fuzz/10pdf.txt ``

``13`` and ``13`` - Tells how many characters to start and stop on.

Since we know that there are 13 chracters in the strng ( ``1010_1234.pdf``) and we dont want to expand, we start and stop at 13 characters.

``0123456789``

Since the file is all numerical, we supply the list of characters 0-9

``-t 10%%_%%%%.pdf``

Since we have a fixed pattern, we specify it here. The ``%`` is a placeholder for numbers that crunch uses. 
Hence, everywhere there is a ``%`` it will be replaced with a numer that we supplied in our list. The ``_``and the ``.pdf``
are fixed, so we add this to our string.


``-c 100000``

This tells crunch how many iterations we want. This number is somewhat arbitrary and can be adjusted based on your needs. 

``-o ~/Tools/fuzz/10pdf.txt``

Finally, the ``-o`` tells where we want to store the output and the file to create.
