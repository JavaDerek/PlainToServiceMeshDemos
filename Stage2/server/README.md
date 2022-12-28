Build Docker image with...

sudo docker build -f Dockerfile -t greeter .

Run Docker image with the comman below. Note the use of the user-defined bridge network...

sudo docker run --net stage2-net --name server greeter

Kill running process with Ctrl-C
