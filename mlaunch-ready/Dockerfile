FROM ubuntu

WORKDIR /

# Setting timezone for nodejs installation
ENV TZ=America/Vancouver
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install initial packages
RUN apt-get update &&\
apt-get install -y curl wget gnupg sudo python3 python3-pip npm nodejs && \
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - && \
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list && \
apt-get update

# install mongo shell 
RUN apt-get install -y mongodb-mongosh

# install mtools and m
RUN pip3 install mtools\[all\] && \
mkdir -p /usr/local/m/versions && \
npm install -g m

# Usual ports for MongoDB
EXPOSE 27000-27025
