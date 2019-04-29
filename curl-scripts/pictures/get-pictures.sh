#!/bin/bash

curl "http://localhost:4741/pictures" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
