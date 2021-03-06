# John the Ripper

## Location

``/etc/john/john.conf`` and/or ``/usr/share/john/john.conf``

## Options

``--list-formats`` This is used to show a list of all the formats that are supported by JtR

## Mutations

### Types of password list mutations

| Type | Explanation|
|------|:----------:|
| Border mutation | commonly used combinations of digits and special symbols can be added at the end or at the beginning, or both |
| Freak mutation | letters are replaced with similarly looking special symbols |
| Case mutation | the program checks all variations of uppercase/lowercase letters for any character |
| Order mutation | character order is reversed |
| Repetition mutation | the same group of characters are repeated several times |
| Vowels mutation | vowels are omitted or capitalized |
| Strip mutation | one or several characters are removed |
| Swap mutation | some characters are swapped and change places |
| Duplicate mutation | some characters are duplicated |
| Delimiter mutation | delimiters are added between characters |

## Rules

To create a new rule, you need to do the following:

1. Go to the directory where ``jon.conf`` is located ``(/usr/share/john/)``
2. Create a new file called ``john-local.conf``
3. Add a new rule to the ``john-local.conf``. In the rule below, we have created a border rule to add 2 digits to the end of each password.

    ```
    [List.Rules:MyRule]
    $[0-9]$[0-9]
    ```
## Examples

`` ``
