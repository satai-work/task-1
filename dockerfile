FROM bash:latest

RUN apk add curl nano

COPY ./file.json /
COPY ./wait-for-elaticsearch.sh /

ENTRYPOINT /usr/local/bin/bash wait-for-elaticsearch.sh 
