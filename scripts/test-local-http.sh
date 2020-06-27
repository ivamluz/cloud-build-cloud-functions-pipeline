#! /bin/bash

source .env

curl "http://localhost:${FUNCTION_PORT_HTTP}/?subject=FooBar"
echo