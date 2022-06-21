#!/bin/bash
set -e

api_url="https://discord.com/api/webhooks/${INPUT_WEBHOOK_ID}/${INPUT_WEBHOOK_TOKEN}"

curl \
    -H "Content-Type: application/json" \
    -d '{"username": "test", "content": "hello"}' \
    ${api_url}