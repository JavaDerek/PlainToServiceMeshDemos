At this stage, the client and server will need a user-defined bridge network to communicate.
So, run this command just once for your Docker installation...

sudo docker network create stage2-net

Note, you may have to run the following commands periodically in order to clean up and re-deploy...

sudo docker ps
sudo docker kill
sudo docker container prune

To build images...

sudo docker build -f Dockerfile -t greeter .

To push images...

1. Get an account at https://hub.docker.com
2. sudo docker login --username=yourhubusername
3. sudo docker images
4. sudo docker tag fa77ddb4c514 yourhubusername/greeter:stage2
5. sudo docker tag 53a769487703 yourhubusername/client:stage2
6. sudo docker push yourhubusername/greeter:stage2
7. sudo docker push yourhubusername/client:stage2