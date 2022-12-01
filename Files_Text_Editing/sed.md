## sed Example

This removes everything between brackets, and including the brackets.

``sed -e 's/\[[^][]*\]//g' filename.txt``

For instance

This:

``About [Status: 200, Size: 66137, Words: 3341, Lines: 341, Duration: 4970ms]``

Becomes:

``About``
