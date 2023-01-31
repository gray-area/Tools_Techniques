# Webmap start and stop shell scripts

start.sh

```shell
#! /bin/bash

# Created by: gray_area

# This script spawns the docker image, issues the token and then opens Firefox to the container URL.

# This runs the docker image, names the host webmap, assigns port 8000 to the host and docker then mounts it at /tmp/webmap (LOCAL) /opt/xml (DOCKER)
sudo docker run -d --name webmap -p 8000:8000 -v /tmp/webmap:/opt/xml reborntc/webmap

# This assigns the docker process above the variable of "PID" then waits until the docker process is complete before continuing.
PID=$!
wait $PID

# This issues the root token needed to login to the webmap URL.
sudo docker exec -ti webmap /root/token

sleep 2

# This opens firefox to the Docker URL for webmap.
firefox http://localhost:8000
```

stop.sh

```shell
#! /bin/bash

# Created by gray_area

# This script stops the webmap Docker image, then removes it.

sudo docker stop webmap

PID=$!
wait $PID

docker rm webmap
```
