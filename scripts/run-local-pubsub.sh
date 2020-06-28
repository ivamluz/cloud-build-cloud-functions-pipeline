#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_FILE="${DIR}/../src/main.py"

source "${DIR}/.env.local"

functions-framework \
  --source=${SOURCE_FILE} \
  --target=${FUNCTION_NAME_PUBSUB} \
  --signature-type=event \
  --port=${FUNCTION_PORT_PUBSUB} \
  --debug