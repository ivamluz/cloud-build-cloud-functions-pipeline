#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/.env.local"

MESSAGE=$1
ATTRIBUTES=$2

gcloud pubsub topics \
  publish ${PUBSUB_TOPIC} \
  --message "${MESSAGE}" \
  --attribute "${ATTRIBUTES}"