This is a github action to send a message to a discord server/channel using the webhook for channel. It can definitely be further genericized when I get some more time to include more featured messages which are just other settings on the same api call.

## Prerequisites
1. First create webhook for discord channel [here](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks "here").
2. [Create github secrets](https://docs.github.com/en/github-ae@latest/actions/security-guides/encrypted-secrets "Create github secrets") with values from the webhook url. https://discord.com/api/webhooks/1111111/abcd 
```bash
WEBHOOK_ID = 1111111
WEBHOOK_TOKEN = abcd
```

## Usage
To use this in your action you need to specify this in your projects workflow.yml under the jobs section (you can name it whatever you want)
```yaml
jobs:
  discord:
    runs-on: ubuntu-latest
    steps:
      - name: Send message to discord channel
        uses: Chicken-Engine/discord-webhook-github-action@main
        with:
          webhook_id: ${{ secrets.WEBHOOK_ID }}
          webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
          webhook_name: "Name"
          message: Insert custom message here. (this will also be a secrets value in the future for portability)
```