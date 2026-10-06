#!/bin/sh
set -e

PORT=${PORT:-10000}
KEY=${UUID:-"a8a7acc3-c7b4-4c93-8215-189043cc8b2f"}
PATH_EP=${WSPATH:-"/api/v1/sync"}

sed -e "s/PORT_NUM/$PORT/g" \
    -e "s/AUTH_KEY/$KEY/g" \
    -e "s|ENDPOINT_PATH|$PATH_EP|g" \
    /app/config.template.json > /app/config.json

exec /usr/local/bin/core-engine -config /app/config.json
