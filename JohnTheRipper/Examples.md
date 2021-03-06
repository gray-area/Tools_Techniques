# JtR Examples

Basic format of JtR

``john --format=[format] --wordlist=[path to wordlist] [path to file]``

## Basic Usage

In order to use JtR, you will need to identify the hash type. ``(Hash-id.py, Haiti, hash-identifier, etc...)``

You will then need to correlate that to the JtR hash type. In order to see the JtR hash type format, use the following:

``john --list=formats``

Typically, you will need to tell John that you are dealing wth a typical hash type by prefixing the hash type with ``raw-``. 

For example: ``--format=raw-md5``.

It is easier to search JtR for the hash type rather than look through them all. This can be done by issung the following command, for example:

``john --list=formats | grep -iF "md5"``

## /etc/passwd and /etc/shadow

The hash is in SHA512 and the files have been saved locally as ``passwd`` and ``shadow``.

First, combine the ``/etc/passwd`` and the ``/etc/shadow`` by using the builtin command ``unshadow``.

``unshadow passwd shadow > unshadowed.txt``

Then run John on the unshadowed file

``john --wordlist=/usr/share/wordlists/rockyou.txt --format=sha512crypt unshadowed.txt``
