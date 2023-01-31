PW-Inspector v0.2 (c) 2005 by van Hauser / THC vh@thc.org [https://github.com/vanhauser-thc/thc-hydra]

## Usage

``pw-inspector -m 8 -lunp -i rockyou.txt | sort | uniq > 8_rockyou_sorted_uniq.txt``

The above has the following characteristics:

* minimum of 8 characters ( -m 8 )
* lowercase characters (-l)
* uppercase characters (-u)
* numbers (-n)
* printable characters (-p) ($,!,/,(,*, etc...)

The list it is reading from is rockyou.txt (-i rockyou.txt)

It is then sorted aplhabetically, parsed for only unique entries and then placed in a file in the same location that the command was run.
