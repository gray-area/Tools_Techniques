# Urls are placed in "hostlist.txt".
# Loop through each entry in hostlist and send to "dig +short"
# "dig +short" can be replaced with otehr commands.

for h in $(cat hostlist.txt); do
  printf "$h = %s\\n" $(dig +short "$h")
done
