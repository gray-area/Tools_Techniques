## How to combine worlists:

``cat file1.txt file2.txt file3.txt > combined_list.txt``

## To clean up the combined list:

``sort combined_list.txt | uniq -u > cleaned_combined_list.txt``
