#!/bin/bash

set -e

echo "Calling API..."

status_code=$(curl \
  -o response.json \
  -s \
  -w "%{http_code}" \
  "$API_URL")

echo "Status Code: $status_code"

echo "Response:"
cat response.json

if [ "$status_code" -ne 200 ]; then
  echo "API Test Failed"
  exit 1
fi

echo "API Test Passed"
#Test Commit
