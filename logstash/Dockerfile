FROM library/logstash:latest

#copy the war of example to the deployments of the WildFly
COPY config /config
COPY data /data

RUN chmod 777 /config/initialize.sh

CMD ["/config/initialize.sh"]
