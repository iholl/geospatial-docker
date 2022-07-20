# ubuntu 20.04 base image includes python 3.8
FROM ubuntu:20.04

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

# get and install the required packages
RUN apt-get update
RUN apt-get install -y wget

WORKDIR /opt

# install miniconda and delete the original executable file
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-py39_4.9.2-Linux-x86_64.sh -b \
    && rm -f Miniconda3-py39_4.9.2-Linux-x86_64.sh 

# check conda install successfully
RUN conda --version

# install juputer note
RUN conda install jupyter=1.0.0 -y

# install geopandas which includes: pandas, matplotlib, scikit-learn, numpy and others
RUN conda install -c conda-forge geopandas=0.11.0 -y

# set the working director to the root
WORKDIR /root

# create a project_files directory to hold notebooks
RUN mkdir project_files

# open jupyter lab when container starts
# lauch jupyter notebook server, allow root user (only for dev)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
