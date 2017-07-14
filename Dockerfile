FROM postgres:9.6-alpine

RUN apk add --no-cache bash

COPY pgrestore.sh /opt/pgrestore.sh

ENTRYPOINT ["/opt/pgrestore.sh"]
