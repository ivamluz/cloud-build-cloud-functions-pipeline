#! /bin/bash

RAW_MESSAGE=$1
MESSAGE_BASE64=$(echo ${RAW_MESSAGE} | base64)

EVENT_PAYLOAD=$(
  sed -e \
    "s|__DATA_BASE64_PLACEHOLDER__|${MESSAGE_BASE64}|g" \
    test-local-payload.json
)

curl -X POST \
  -H'Content-type: application/json' \
  -d "${EVENT_PAYLOAD}" \
  http://localhost:8080