#!/bin/bash
docker cp instances.yml elastic_dk:/instances.yml

docker exec -it elastic_dk sh -c '
yum install -y -q -e 0 unzip;
if [[ ! -f /usr/share/elasticsearch/config/certs/bundle.zip ]]; then
  bin/elasticsearch-certutil cert --silent --pem --in /instances.yml -out /usr/share/elasticsearch/config/certs/bundle.zip;
  unzip /usr/share/elasticsearch/config/certs/bundle.zip -d /usr/share/elasticsearch/config/certs;
fi;
chown -R 1000:0 /usr/share/elasticsearch/config/certs
'