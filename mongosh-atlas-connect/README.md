# Docker image for automatically connecting to a MongoDB instance
## Summary
The docker image is a quick call to the [mongo shell](https://docs.mongodb.com/mongodb-shell/) and connecting to either a self-deployed MongoDB instance or an Atlas [URI string](https://docs.mongodb.com/manual/reference/connection-string/), which can be found on the `atlas-connect.sh` file.  The included file is required to running the shell script for connecting to the MongoDB deployment.  The shell script contains the following which you will need to update `URI string` and `username` values to automatically connect.
```bash
mongosh "mongodb+srv://hostname.mongodb.net/collection" --username username
```

## Building the image

You can simply build the image by going to the folder where the `Dockerfile` is located and running the command
```bash
docker build -t "name_of_image_you_want" .
```
## Running the image into a container

You can run the image into a container with the sample command below:
```bash
docker run -it "name_of_image_you_want"
```

It will then prompt for the password of the [database user](https://docs.atlas.mongodb.com/security-add-mongodb-users/) specified.  It will look similar to the following:
```bash
$ docker run -it mongosh-atlas-connect
Enter password: ****
Current Mongosh Log ID: XXXXXXXXX
Connecting to:		mongodb+srv://hostname.mongodb.net/collection
```
**Note: If you were connecting to an Atlas cluster, be sure that you have completed the [other requirements in connecting to your Atlas cluster deployment](https://docs.atlas.mongodb.com/connect-to-database-deployment/) for the container to connect successfully.*

## Disclaimer
This is not an official MongoDB document and is simply an image to isolate your connection to a self-deployed MongoDB instace or a MongoDB Atlas cluster.
