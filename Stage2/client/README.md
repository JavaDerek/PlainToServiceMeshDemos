Build Docker image with...

sudo docker build -f Dockerfile -t client .

Run Docker image with...

sudo docker run --net stage2-net -it client:latest /bin/bash

Kill running process with Ctrl-C