#!/bin/bash

#curl -XDELETE 'http://192.168.99.100:9200/weather/'

curl -XPUT 'http://192.168.99.100:9200/weather/' -d '
index :
    number_of_shards : 3
    number_of_replicas : 1
'

/docker-entrypoint.sh -f /config/logstash.conf
