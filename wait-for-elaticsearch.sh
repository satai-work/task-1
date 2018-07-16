#!/usr/local/bin/bash
until nc -z elasticsearch 9200; do
    echo "$(date) - waiting for elastic..."
    sleep 1
done

curl -XDELETE 'http://elasticsearch:9200/test_index'
curl -XPUT 'http://elasticsearch:9200/test_index' -body '{ "settings": { "number_of_shards": 1 }}'
curl -H 'Content-Type: application/json' -XPOST 'http://elasticsearch:9200/test_index/test' -d @/file.json
