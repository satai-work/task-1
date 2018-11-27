Simple docker-compose example for delayed task with default container

1. Just write what you want from elaticsearch on post-start phase in wait-for-elaticsearch.sh with REST API
2. Modify file.json at root directory
2. docker-compose up
3. wait till post-script container finish
4. check your changes on curl $(docker-machine ip) with params or via chrome module ElasticSearch Head
5. clean yourself: docker compose down
