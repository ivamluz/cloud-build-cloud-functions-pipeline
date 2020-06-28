#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/.env.local"

gcloud pubsub topics \
  create ${PUBSUB_TOPIC}