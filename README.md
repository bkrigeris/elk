# Project Name: Lightweight ELK Stack

## Objective of this project

This objective of this project is to have a lightweight, easy to install and deploy ELK.

## Target audience for this project

While this ELK is not designed for the enterprise usage, it can be spun up quickly and easily to help a network engineer or system administrator capture, search and visualize logs. This is especially helpful when troubleshooting Cisco IOS devices that don't retain logs on reboot or have a small syslog buffers.

## Prerequisites

### Docker
Install Docker and Docker Compose on the system where you'll build and run the containers. Instructions for your operating system can be found @ <https://docs.docker.com/get-docker/>

### Git Client
Git installation can be found @ <https://www.atlassian.com/git/tutorials/install-git>


## Building Elastic Stack Docker Containers

### ELK components
Logstash 
:  <https://www.elastic.co/logstash>

Elastic Search 
:  <https://www.elastic.co/elasticsearch/>

Kibana 
:  <https://www.elastic.co/kibana>

### Directories and files
```
Directory
  ├ elasticsearch
  | ├ Dockerfile
  | └ config
  |   └ elasticsearch.yml
  ├ logstash
  | ├ Dockerfile
  | ├ config
  | | └ logstash.yml
  | └ pipeline
  |   └ logstash.conf
  ├ kibana
  | ├ Dockerfile
  | └ config
  |   └ kibana.yml
  ├ docker-compose.yml
  └ README.md
```
### Logstash Docker Components
Dockerfile 
:  this is what docker engine is using to build the container image. It contains instructions for base image and additional files that are added image container. Complete reference can be found @ <https://docs.docker.com/engine/reference/builder/>

logstash.yml
:  a file that defines logstash configuration settings. Complete reference can be found @ <https://www.elastic.co/guide/en/logstash/current/index.html>

logstash.conf
:  a file that defines logstash operational settings for input, filter and output configuration. Complete reference can be found @ <https://www.elastic.co/guide/en/logstash/current/index.html>

### Elastic Search Docker Components
Dockerfile 
:  this is what docker engine is using to build the container image. It contains instructions for base image and additional files that are added image container. Complete reference can be found @ <https://docs.docker.com/engine/reference/builder/>

elasticsearch.yml
:  a file that defines elastic search configuration settings. Complete reference can be found @ <https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html>


### Kibana Search Docker Components
Dockerfile 
:  this is what docker engine is using to build the container image. It contains instructions for base image and additional files that are added image container. Complete reference can be found @ <https://docs.docker.com/engine/reference/builder/>

kibana.yml
:  a file that defines kibana configuration settings. Complete reference can be found @ <https://www.elastic.co/guide/en/kibana/current/index.html>


## Running Elastic Stack

In the cloned directory, where docker-compose.yml resides run

```
docker-compose up -d
```
Note that the first time you run it, Docker will download and create new images. It can take anywhere up to 20 minutes to build and run initial Elastic Stack

```-d``` flag, starts the stack headless

To bring down the stack run
```
docker-compose down
```

## Accessing Kibana
On the same machine go to <http://localhost:5601>
You can substitute localhost for IP and FQDN of the machine where Kibana is running. Make sure the firewall on the machine allows inbound ```tcp 5601```.


## Testing the setup
An easy way to test the container is to use Netcat to send a message to Logstash from the host machine. If doing from a remote device, substitute localhost IP 127.0.0.1 with IP address of the host the container is running on.
```
echo "message" | nc 127.0.0.1 5000
```
Make sure the firewall on the machine allows inbound ```tcp/udp 5000```.

You will see this log entry in kibana.

## Notes
While the Elastic Stack configuration is basic and primitive, additional and complex features can be added by manipulating configuration files.
