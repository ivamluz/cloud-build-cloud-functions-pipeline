#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_FILE="${DIR}/../src/main.py"

source "${DIR}/.env.local"

curl "http://localhost:${FUNCTION_PORT_HTTP}/?subject=FooBar"
echo