#!/bin/bash
docker rm -f elastic_dk
docker run -d --name elastic_dk -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e "network.host=0.0.0.0" docker.elastic.co/elasticsearch/elasticsearch:7.15.2
