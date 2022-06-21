#!/bin/bash
set -e

api_url="https://discord.com/api/webhooks/${INPUT_WEBHOOK_ID}/${INPUT_WEBHOOK_TOKEN}"
echo $api_url
curl \
    -H "Content-Type: application/json" \
    -d '{"username": "Github Bot", "content": "$INPUT_MESSAGE"}'  \
    $api_url