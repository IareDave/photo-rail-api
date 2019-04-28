#!/bin/bash

curl "http://localhost:4741/new" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "create": "'"${CREATE}"'"
    }
  }'

echo
