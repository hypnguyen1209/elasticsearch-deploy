#!/bin/bash
docker exec -it elastic_dk sh -c 'bin/elasticsearch-syskeygen -E ELASTIC_PASSWORD=macdinh'
docker cp elastic_dk:/usr/share/elasticsearch/config/system_key system_key