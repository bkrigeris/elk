# pull the elastic search docker from Elastic's docker registry
FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.1
ENV discovery.type=single-node

ADD config/elasticsearch.yml /usr/share/elasticsearch/config/

#set ports to be exposed
EXPOSE 9200/tcp
EXPOSE 9300/tcp