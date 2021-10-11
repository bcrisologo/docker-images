# MongoDB Self-deployment Testing environment
## Summary
This docker image is built under base image [ubuntu](https://hub.docker.com/_/ubuntu/).  This environment allows you to be able to deploy different versions of MongoDB and be able to manage them easily without needing to manually remove/install the local dependencies.  

The following are included on this image:
* [mtools](http://blog.rueckstiess.com/mtools/install.html#installation) - a Python based program that comes with [mlauch](http://blog.rueckstiess.com/mtools/mlaunch.html), an excellent tool for launching different configurations for your local MongoDB instance, be it a [replica set](https://docs.mongodb.com/manual/core/replica-set-members/) or a [sharded cluster](https://docs.mongodb.com/manual/sharding/), or even a [single instance](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/#run-mongodb-community-edition) of MongoDB.
* [m](https://github.com/aheckmann/m) - MongoDB version manager that helps you download, use, and manage multiple versions of the MongoDB server and command-line tools.
* [mongo shell](https://docs.mongodb.com/mongodb-shell/) - a fully functional JavaScript and Node.js 14.x REPL environment for interacting with MongoDB deployments. You can use the MongoDB Shell to test queries and operations directly with your database.

## Building image and running into a container
You can simply build the image by going to the folder where the `Dockerfile` is located and running the command
```bash
docker build -t "name_of_image_you_want" .
```
Once the build is completed, you can run the docker image and you should be on the root user interface
```shell
$ docker run -it "name_of_image_you_want"
root@f3affa4ca26d:/ # 
```
## Obtaining a MongoDB version
You can download a version of MongoDB by running `m` followed by the MongoDB version you wish to download.  It will prompt you to proceed if the version is not yet available:
```
root@f3affa4ca26d:/# m 4.2
>> Checking for stable release of MongoDB 4.2
MongoDB version 4.2.17 is not installed.
Installation may take a while. Would you like to proceed? [Y/n]
```
**Note: You can check the available MongoDB versions by running* `m list`

Once it's done, you can then check that the version(s) installed by m on your host:
```
root@f3affa4ca26d:/# m installed
    4.2.17 
```
## Launching and Connecting to a MongoDB instance
Using mlaunch, you can deploy a single instace of MongoDB
```
root@f3affa4ca26d:/# mlaunch init --single --name single_instance
launching: "mongod" on port 27017
```
To confirm that there is indeed an instance running with mlaunch, you can run mlaunch list and would see the `STATUS` as "running" similar to below:
```
root@f3affa4ca26d:/# mlaunch list

PROCESS    PORT     STATUS     PID

single     27017    running    129
```
You can then connect to that instance using the mongo shell
```
root@f3affa4ca26d:/# mongosh
Current Mongosh Log ID:	XXXXXXXXXXXXXXXXXXXX
Connecting to:		mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000
Using MongoDB:		4.2.17
Using Mongosh:		1.1.0

For mongosh info see: https://docs.mongodb.com/mongodb-shell/


To help improve our products, anonymous usage data is collected and sent to MongoDB periodically (https://www.mongodb.com/legal/privacy-policy).
You can opt-out by running the disableTelemetry() command.

------
   The server generated these startup warnings when booting:
   2021-10-10T21:07:38.589-0700: 
   2021-10-10T21:07:38.589-0700: ** WARNING: Access control is not enabled for the database.
   2021-10-10T21:07:38.589-0700: **          Read and write access to data and configuration is unrestricted.
   2021-10-10T21:07:38.589-0700: ** WARNING: You are running this process as the root user, which is not recommended.
   2021-10-10T21:07:38.589-0700: 
   2021-10-10T21:07:38.589-0700: ** WARNING: This server is bound to localhost.
   2021-10-10T21:07:38.589-0700: **          Remote systems will be unable to connect to this server.
   2021-10-10T21:07:38.589-0700: **          Start the server with --bind_ip <address> to specify which IP
   2021-10-10T21:07:38.589-0700: **          addresses it should serve responses from, or with --bind_ip_all to
   2021-10-10T21:07:38.589-0700: **          bind to all interfaces. If this behavior is desired, start the
   2021-10-10T21:07:38.589-0700: **          server with --bind_ip 127.0.0.1 to disable this warning.
   2021-10-10T21:07:38.589-0700: 
------

test>
```
## Stopping a MongoDB instance
You can simply stop an instance by sending an `mlaunch stop` command.

### Disclaimer
This is not an official MongoDB documentation and is created for setting up test environments for different MongoDB versions for your application.
