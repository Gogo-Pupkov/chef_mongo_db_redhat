# chef mongo db redhat

1. Installs mongodb from package

2. The Cookbook is based on the official instruction page which can be 
found on https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/

3. Requirements
3.1 Platform
Redhat 7
Centos 7

Chef 12.14+

4. Steps
4.1 Configure the package management system
4.2 Install the MongoDB packages
4.3 Enable and Start MongoDB service

5. Resources
5.1 template mongodb.repo used to configure mongodb yum repository
5.2 package mongodb-org used to install mongodb 
5.3 service mongod used to enable and start the service
