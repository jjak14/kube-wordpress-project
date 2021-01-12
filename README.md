# Kubernetes wordpress project

The repository if a part of a kubernetes project.
We are building a High availability Wordpress website
We are handling the wordpress deployment portion from this repository

## Our task:
Create a deployment controller for wordpress, with 6 replicas. 
When wordpress connects to mysql, make sure that it writes data to the master and read data from mysql slaves.
Wordpress should connect to Memcached database for storing sessions. 
Deploy wordpress with 6 replicas.

## Our steps: