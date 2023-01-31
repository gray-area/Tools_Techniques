# CloudHunter Tool

This tool can be used to detect the presence of assets in Google, AWS and Azure. Additionally, it provides a determination of status (OPEN or PRIVATE).

https://github.com/belane/CloudHunter

```
usage: cloudhunter.py [-h] [-p file] [-t num] [-c num] [-b] [-d] [-v] [-o] input


positional arguments:
  input                          Company name, url or any base name.

optional arguments:
  -h, --help                     show this help message and exit
  -p file, --permutations-file   Permutations file.
  -t num, --threads num          Threads.
  -c num, --crawl-deep num       How many pages to crawl after the first.
  -b, --base-only                Checks only the base name, skips permutations generation.
  -d, --disable-bruteforce       Disable discovery by brute force.
  -v, --verbose                  Verbose log
  -o, --open-only                Show only open buckets.
```
