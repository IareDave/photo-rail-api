#!/bin/bash

curl "http://localhost:4741/pictures/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture": {
      "url": "'"${URL}"'"
    }
  }'

echo
