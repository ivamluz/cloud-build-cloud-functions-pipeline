#! /bin/bash

RAW_MESSAGE=$1
MESSAGE_BASE64=$(echo -n ${RAW_MESSAGE} | base64)

EVENT_PAYLOAD=$(
  sed -e \
    "s|__DATA_BASE64_PLACEHOLDER__|${MESSAGE_BASE64}|g" \
    ./payloads/test-local-pubsub-payload.json
)

source .env

curl -X POST \
  -H'Content-type: application/json' \
  -d "${EVENT_PAYLOAD}" \
  "http://localhost:${FUNCTION_PORT_PUBSUB}"
