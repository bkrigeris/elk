# pull the logstash docker from Elastic's docker registry
FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.1

# remove default logstash.conf file
RUN rm -f /usr/share/logstash/pipeline/logstash.conf

# add logstash files from local directory
ADD pipeline/logstash.conf /usr/share/logstash/pipeline/
ADD config/logstash.yml /usr/share/logstash/config/

#set ports to be exposed
EXPOSE 9200/tcp
EXPOSE 9300/tcp