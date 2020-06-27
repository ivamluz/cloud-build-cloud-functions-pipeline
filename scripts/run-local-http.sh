#! /bin/bash

source .env.local

functions-framework \
  --source=../src/main.py \
  --target=${FUNCTION_NAME_HTTP} \
  --signature-type=http \
  --port ${FUNCTION_PORT_HTTP} \
  --debug