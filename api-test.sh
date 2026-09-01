#!/bin/bash

set -e

API_URL="https://main.manage.atco-train.suite.maximo.com/maximo/api/dm/distribute?apikey=vn10ngdbhqbt1utvinmtppp5g3fdbd0chm466mj5"

status_code=$(curl \
  -X POST \
  -o response.json \
  -s \
  -w "%{http_code}" \
  "$API_URL")

echo "Status Code: $status_code"

cat response.json

if [ "$status_code" -ne 200 ]; then
    echo "API Failed"
    exit 1
fi

echo "API Test Passed"
