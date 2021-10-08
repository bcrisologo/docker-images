# Mongo shell auto-connect to a MongoDB Atlas Cluster
The docker image is a quick call to the [mongo shell](https://docs.mongodb.com/mongodb-shell/) and connecting to the Atlas URI string found on the `atlas-connect.sh` file.  The shell script contains the following which you will need to update `URI string` and `username` values to automatically connect:

```bash
mongosh "mongodb+srv://hostname.mongodb.net/collection" --username username
```
Once you run built the image and run it in a container, it will prompt for the password of the [database user](https://docs.atlas.mongodb.com/security-add-mongodb-users/) specified.  It will look similar to the following:
```bash
$ docker run -it mongosh-atlas-connect
Enter password: ****
Current Mongosh Log ID: XXXXXXXXX
Connecting to:		mongodb+srv://hostname.mongodb.net/collection
```
