# pull the elastic search docker from Elastic's docker registry
FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.1

#set environment setting to run as a single node
ENV discovery.type=single-node

#copy the configuration file
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/

#set ports to be exposed. Port 9300 is only needed for a cluster.
EXPOSE 9200/tcp
#EXPOSE 9300/tcp
