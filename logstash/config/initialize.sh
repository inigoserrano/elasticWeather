#!/bin/bash

#Sleep for 1 minute, to start the elastic
sleep 60

curl -XDELETE 'http://elasticsearch:9200/weather/'

curl -XPUT 'http://elasticsearch:9200/weather/' -d '
index :
    number_of_shards : 3
    number_of_replicas : 1
'

/docker-entrypoint.sh -f /config/logstash.conf
