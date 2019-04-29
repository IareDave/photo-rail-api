#!/bin/bash

curl "http://localhost:4741/pictures/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "picture": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'

echo
