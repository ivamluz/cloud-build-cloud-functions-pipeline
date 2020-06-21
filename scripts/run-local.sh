#! /bin/bash

FUNCTION_NAME=$(cat function-name)

functions-framework \
  --source=../src/main.py \
  --target=${FUNCTION_NAME} \
  --signature-type=event \
  --debug