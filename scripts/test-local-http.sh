#! /bin/bash

source .env.local

curl "http://localhost:${FUNCTION_PORT_HTTP}/?subject=FooBar"
echo