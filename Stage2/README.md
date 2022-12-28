At this stage, the client and server will need a user-defined bridge network to communicate.
So, run this command just once for your Docker installation...

sudo docker network create stage2-net

Note, you may have to run the following commands periodically in order to clean up and re-deploy...

sudo docker ps
sudo docker kill
sudo docker container prune
