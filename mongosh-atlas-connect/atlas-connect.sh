#!/bin/sh

# Prompt for URI
echo "MongoDB URI: "
read mongodb_uri

# Prompt for MongoDB username
echo "MongoDB username: "
read mongodb_username

mongosh "$mongodb_uri" --username $mongodb_username

# Option if you want to the docker image to auto-connect to a MongoDB instance / Atlas cluster
# mongosh "mongodb+srv://hostname.mongodb.net/collection" --username username
