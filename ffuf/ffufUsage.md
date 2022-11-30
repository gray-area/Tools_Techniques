## Usage of ffuf

This command creates a file that contains a list of numbers from 0000 to 9999

`` seq -w 0 9999 > nums.txt ``

Use the file created above to fuzz the directory

``ffuf -u http://$RHOSTS:8080/debug/logsFUZZ -w nums.txt ``
