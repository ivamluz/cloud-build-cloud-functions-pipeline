#! /bin/bash

FUNCTION_NAME=$(cat function-name-http)

functions-framework \
  --source=../src/main.py \
  --target=${FUNCTION_NAME} \
  --signature-type=http \
  --debug