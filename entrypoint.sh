#!/bin/sh
set -e

PORT=${PORT:-10000}
UUID=${UUID:-"a8a7acc3-c7b4-4c93-8215-189043cc8b2f"}
WSPATH=${WSPATH:-"/vl-stream"}

echo "=== Starting Xray-core on Render ==="
echo "Target Port: $PORT"
echo "Client UUID: $UUID"
echo "WebSocket Path: $WSPATH"

# Substitute environment variables into template
sed -e "s/PORT_PLACEHOLDER/$PORT/g" \
    -e "s/UUID_PLACEHOLDER/$UUID/g" \
    -e "s|WSPATH_PLACEHOLDER|$WSPATH|g" \
    /etc/xray/config.template.json > /etc/xray/config.json

echo "Configuration generated successfully."
echo "Running Xray..."

exec /usr/bin/xray -config /etc/xray/config.json
