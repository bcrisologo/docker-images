# Docker Images for MongoDB/Atlas
## Summary
The Docker images created are the following:

* [mlaunch-ready](https://github.com/bcrisologo/docker-images/tree/main/mlaunch-ready) - ubuntu-based image that has the [m version manager](https://github.com/aheckmann/m), [mongo shell](https://docs.mongodb.com/mongodb-shell/) and [mlaunch](http://blog.rueckstiess.com/mtools/install.html) tools installed to be able to self-deploy different versions of MongoDB.
* [mongosh-atlas-connect](https://github.com/bcrisologo/docker-images/tree/main/mongosh-atlas-connect) - image that automatically connects to an Atlas cluster with [mongosh](https://docs.mongodb.com/mongodb-shell/) installed and prompting the password for the specific Atlas cluster set on the included shell script
