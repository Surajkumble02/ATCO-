#!/bin/bash

set -e

API_URL="https://jsonplaceholder.typicode.com/posts/1"

echo "Calling API..."

response=$(curl -s \
  --location \
  --request GET "$API_URL")

echo "Response:"
echo "$response"

# Validate response contains expected value
echo "$response" | grep '"id": 1'

echo "API Test Passed"