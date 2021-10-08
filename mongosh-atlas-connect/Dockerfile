FROM ubuntu

WORKDIR /

# Moving mongosh connection command to root directory
COPY /atlas-connect.sh /

RUN apt-get update &&\
apt-get install -y curl wget gnupg sudo && \
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - && \
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list && \
apt-get update && \
apt-get install -y mongodb-mongosh

# Usual ports for MongoDB
EXPOSE 27000-27025

CMD [ "/atlas-connect.sh" ]
