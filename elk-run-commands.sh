#!/bin/bash

docker run --rm -d \
--name logstash-server \
-p 9600:9600/tcp -p 5000:5000/tcp -p 5000:5000/udp \
logstash:latest logstash

docker run --rm -d -p 9200:9200 \
--name elastic-server \
-v ~/elasticsearch/data:/usr/share/elasticsearch/data \
-v ~/elasticsearch/logs:/usr/share/elasticsearch/logs \
elasticsearch:latest elasticsearch

docker run --rm -d \
--name kibana-server \
-p 5601:5601/tcp \
kibana:latest kibana