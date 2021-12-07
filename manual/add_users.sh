#!/bin/bash
docker cp users elastic_dk:/usr/share/elasticsearch/config/users
docker cp users_roles elastic_dk:/usr/share/elasticsearch/config/users_roles