#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="${DIR}/../src"

source "${DIR}/.env.local"

TRIGGER_URL=$(
  gcloud functions \
  describe ${FUNCTION_NAME_HTTP} \
  --format="value(httpsTrigger.url)"
)

curl "${TRIGGER_URL}?subject=FooBar"

echo