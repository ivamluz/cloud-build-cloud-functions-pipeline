#! /bin/bash

source .env.local

functions-framework \
  --source=../src/main.py \
  --target=${FUNCTION_NAME_PUBSUB} \
  --signature-type=event \
  --port ${FUNCTION_PORT_PUBSUB} \
  --debug