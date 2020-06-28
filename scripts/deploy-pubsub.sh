#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="${DIR}/../src"

source "${DIR}/.env.local"

gcloud functions \
  deploy ${FUNCTION_NAME_PUBSUB} \
  --source=${SOURCE_DIR} \
  --runtime=python37 \
  --trigger-topic=${PUBSUB_TOPIC}