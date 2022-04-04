## CeWL (Custom Word List generator)

``cewl -h`` Brings up the help menu

Tools such as Cewl can be used to effectively crawl a website and extract strings or keywords. Cewl is a powerful tool to generate a wordlist specific to a given company or target. Consider the following example below:

``user@off$ cewl -w list.txt -d 5 -m 5 http://offensive.labs``

``-w`` will write the contents to a file. In this case, list.txt.

``-m 5`` gathers strings (words) that are 5 characters or more

``-d 5`` is the depth level of web crawling/spidering (default 2)

``http://offensive.labs`` is the URL that will be used

cewl can also be used to extract metadata from files.

``fab-cewl [OPTION] ... filename/list``

``-h`` for help options.
