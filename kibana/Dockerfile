# pull the kibana docker from Elastic's docker registry
FROM docker.elastic.co/kibana/kibana:7.7.1

ADD config/kibana.yml /usr/share/kibana/config/

#set ports to be exposed
EXPOSE 5601/tcp