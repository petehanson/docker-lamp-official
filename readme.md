# Introduction

This is an initial attempt at doing a PHP/Nginx/MySQL/Redis stack, using Docker containers to handle the hosting. The idea is that you can overlay this on a normal web project to "Dockerize" the application. 

# Overview

The package contains a docker folder, which contains specific configurations and guides in Dockerfiles for building the different container images required.  There is a tool called develop which is a wrapper script to handle a lot of common commands that you need a bunch of docker-compose boiler plate to run. Finally, it defines some common locations, by default, like where code would go and guidelines for handling data volumes for mysql and redis.

# Container Images

## Webserver

This contains an install of PHP 7.0, commonly used PHP modules, Git, Nginx, PHP FPM, and an install of Composer. You can change up what PHP modules you can use, by editing docker/webserver/Dockerfile and making changes to the apt-get install commands for the various PHP modules you will need. 

## Node

This is a simple node container, mainly for use with server side JS calls, NPM module install and Gulp operations.

## Mysql 5.7

This container runs the MySQL database, which is mainly governed by environment variables in the develop and docker-compose.yml files. This uses a persisted volume, attached to the MySQL container to hold the database files that reside in /var/lib/mysql

## Redis

This is a basic Redis container for handling activities that you may need Redis for.  There is a persistent volume for holding the Redis cache data. 
This is also used for PHP session handling. The FPM Dockerfile defines the pecl call to install the redis module and adds session configurations to handle this.

## Mailhog

Runs a mailhog instance for reviewing system emails. You'd access the web UI at:  http://localhost:8025. SMTP clients should be configured to send email to mailhog:1025

# Usage

## Initialization

Run the init.sh script to create a customized build.sh and docker-compose.yml file. The init script uses values from environment.cfg to define various elements of the environment you are defining and blends them into those files. 

Once init is set, then run build.sh to build out the docker containers you will need.

## Starting The Stack

You can start the stack by starting in the folder that contains the docker-compose.yml file running:
 
 docker-compose up

Once the stack is running, you can visit http://localhost/ to get a very basic index page with a few sample test files in place, showing how sessions can be managed in redis and PDO connections to a mysql container. 

## Stopping The Stack

To stop the stack, you can run:

docker-compose stop

This stops the containers, which allows them to be started again. It doesn't remove them. 

If you want to stop and remove the containers, then run:

docker-compose down


# Helper Script

Note: This feature is not updated yet. 
The primary usage is handled through the ./develop script. It is a wrapper for the docker-compose script, including adding in environment varaibles that docker-compose requires along with other options and shorthands to make things easier.  Below area list of options on what the develop tool can do:


# ToDo Items

#- Add in an container that handles cron tasks
- Add in an Elasticsearch instance
- Add in a toolset that handles mailing, like a postfix implementation, that takes configuration for it's relay

