# geospatial-docker

This repo contains a Dockerfile which will run ubuntu and jupyter notebook server within an Anconda environment.

### How to use this repo

Clone the repo to your local machine:  

build the image with the name gis_env and tag latest  
Run: docker build -t gis_env:latest .  
  
run the image in a container running on port 8888  
Run: docker run -it -p 8888:8888 gis_env  

Go to localhost:8888 on the host machine to utilize the new virtual machine
