FROM alpine:latest

RUN apk add --no-cache \
    docker \
    docker-compose \
    bash

WORKDIR /app

COPY docker-compose.yml ./
COPY run.sh ./

RUN chmod +x run.sh

CMD ["bash", "run.sh"]

