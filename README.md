#Kubernetes wordpress project

The repository is a part of a kubernetes project.
We are building a High availability Wordpress website with mysql (with master-slave read replicas) as database engine and Memcached
The wordpress deployment portion of the project is handled from this repository.

##Our specific task:
Create a deployment controller for wordpress, with 6 replicas. 
When wordpress connects to mysql, make sure that it writes data to the master and read data from mysql slaves.
Wordpress should connect to Memcached database for storing sessions. 
Deploy wordpress with 6 replicas.

#The different tasks