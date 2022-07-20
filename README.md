# geospatial-docker

This repo contains a Dockerfile which will run ubuntu and jupyter notebook server within an miniconda environment.

## How to use this repo

Clone the repo to your local machine  
```
git clone https://github.com/iholl/geospatial-docker.git
```
Build the image with the name gis_env and tag latest  
```
docker build -t gis_env:latest .  
```
Run the image in a container running on port 8888  
```
docker run -it -p 8888:8888 gis_env  
```
Access jupyter notebook on the host machine
```
localhost:8888
```

## Packages

The packages included in this image are not meant to provide a kitchen-sink of all geo-spatially related python packages. This image seeks to provide a more opinionated collection of packages, prioritizing those packages that can be slow or tricky to install due to compiled code and external dependencies, and with an emphasis on more general-purpose libraries and classes.

Please note that many additional geospatial (and other) packages are pulled in as dependencies of this list and thus can also be found on the image.  Feel free to request any additional packages you would like to see added by [filing an issue](https://github.com/iholl/geospatial-docker/issues). 

Package       | Version   | Description  
--------------|-----------|----------------------------------------------------------------------------------------
Jupyter       | 1.0.0     | Used to create ide for quick prototyping and includes some additional usedul packages  
Geopandas     | 0.11.0    | Used to process vector spatial data and includes pandas, numpy, scikit-learn, and others
