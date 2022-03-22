# cut Command Usage

Syntax

``cut [option] [file]``

## cut Command Options

``-f (--fields=LIST)``	Select using a specified field, a field set, or a field range.

``-b (--bytes=LIST)``	Select using a specified byte, a byte set, or a byte range.

``-c (--characters=LIST)``	Select using a specified character, a character set, or a character range.

``-d (--delimiter)``	Used to specify a delimiter to use instead of the default TAB delimiter.

``--complement``	When specified, this option instructs cut to display all the bytes, characters, or fields, except the selected.

``-s (--only-delimited)``	The default setting is to print the lines that don't contain delimiter characters. Specifying the -s option instructs cut not to print the lines that don't contain delimiters.

``--output-delimiter``	By default, cut uses the input delimiter as the output delimiter. Specifying the --output-delimiter option allows you to specify a different output delimiter.

## Cut by Characters

``cut -c [LIST] [file]``

Example:

`` cut -c 10- something.txt``

The ``10-`` means that cut will extract everything from character 10 to the end of the line, for each line in ``something.txt``

## Cut Based on a Delimiter

``cut -d[delimiter] [file]``

Example

``cat something.txt | cut -d ' ' -f 2``

The above command opens and reads ``something.txt`` then pipes it to the ``cut`` command. ``cut`` then looks for the delimeter of a single space ``' '`` and is looking for field 2 ``-f 2``.
