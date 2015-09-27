#!/bin/bash

curl -XDELETE 'http://192.168.99.100:9200/weather/'

/docker-entrypoint.sh -f /config/logstash.conf
