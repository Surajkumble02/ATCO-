#!/bin/bash

set -e

echo "Calling API..."

status_code=$(curl \
  -o response.json \
  -s \
  -w "%{http_code}" \
  https://jsonplaceholder.typicode.com/posts/1)

echo "Status Code: $status_code"

# Step 5 - Status Code Validation
if [ "$status_code" -ne 200 ]; then
  echo "API Failed"
  exit 1
fi

# Step 4 - Response Validation
grep '"id": 1' response.json

echo "API Test Passed"
# test commit 1
