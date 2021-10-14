# Docker Images for MongoDB/Atlas
## Summary
The Docker images created are the following:

* [mlaunch-ready](https://github.com/bcrisologo/docker-images/tree/main/mlaunch-ready) - ubuntu-based image that has the [m version manager](https://github.com/aheckmann/m), [mongo shell](https://docs.mongodb.com/mongodb-shell/) and [mlaunch](http://blog.rueckstiess.com/mtools/install.html) tools installed to be able to self-deploy different versions of MongoDB.
* [mlaunch-ready-centos](https://github.com/bcrisologo/docker-images/tree/main/mlaunch-ready-centos) - centos-based image with the same tools as **mlaunch-ready**.
* [mongosh-atlas-connect](https://github.com/bcrisologo/docker-images/tree/main/mongosh-atlas-connect) - image that automatically connects to either a self-deployed MongoDB instance or a MongoDB Atlas cluster with [mongosh](https://docs.mongodb.com/mongodb-shell/) installed and prompting the [database user](https://docs.atlas.mongodb.com/security-add-mongodb-users/) password.

### Prerequisites
You will need `Docker` installed on your device to be able to build the images above
* [Install Docker](https://docs.docker.com/engine/install/)
