# crunch

``crunch`` is one of many powerful tools for creating an offline wordlist.

## Usage

``crunch   [options]`` where min and max are numbers.

``user@off$ crunch 2 2 01234abcd -o crunch.txt``

This creates a wordlist containing all possible combinations of 2 characters, including 0-4 and a-d.

``crunch 8 8 0123456789abcdefABCDEF -o crunch.txt`` the file generated is ``459 GB`` and contains ``54875873536`` words.

``crunch`` also lets us specify a character set using the -t option to combine words of our choice. Here are some of the other options that could be used to help create different combinations of your choice:

``@`` - lower case alpha characters

``,`` - upper case alpha characters

``%`` - numeric characters

``^`` - special characters including space

---------
## Examples

For example, if part of the password is known to us, and we know it starts with ``pass`` and follows two numbers, we can use the % symbol from above to match the numbers. Here we generate a wordlist that contains ``pass`` followed by 2 numbers:

``user@off$  crunch 6 6 -t pass%%``

 <br>
To generate a list containing ``OFF@!`` and output to a filed named ``list.txt``

``crunch 5 5 -t OFF^^, -o list.txt``

The ``5 5`` tells it to have a min length of ``5`` and a max length of ``5``

The ``-t`` option allows us to specify a character set.

We will look for the term "OFF" with two symbols after it.

To specify the symbols, we will use ``^^`` after the word "OFF". This is because we are looking for the whole term of ``OFF@!``.

We will also use the ``,`` to specify that we want all of our results to be capitalized.

Lastly, we will send the file to ``list.txt`` by using the ``-o`` option. 
