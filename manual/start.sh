#!/bin/bash
docker rm -f elastic_dk
docker run --env-file config.elasticsearch -v users:/usr/share/elasticsearch/config/ -v certs:/usr/share/elasticsearch/config/certs -d --name elastic_dk -p 9200:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:7.15.2 
