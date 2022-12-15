# pwgen Usage


## WordPress Passwords

Create 700 WordPress style passwords

``pwgen -cnys1 24 700 > wordpress.txt``  (NOTE: the -1 option is the number one, not a lowercase L )

This creates passwords with the following criteria:

  * ``-c`` : Include at least one capital letter
  * ``-n`` : Include at least one number
  * ``-y`` : Include at least one special symbol
  * ``-s`` : Generate passwords randomly
  * ``-1`` : Do not print the passwords in a column (1 entry per line)
  * ``24`` : Make the passwords 24 characters in length
  * ``700`` : Create a total of 700 random passwords
  * ``> wordpress.txt`` : Place all passwords in a file called wordpress.txt