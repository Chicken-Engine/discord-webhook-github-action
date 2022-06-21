REM to run this locally you need to specify the environment variables.

REM build image
docker build -t aar0nism/discord-webhook-github-action:latest .
REM create container
docker container create --name discord-webhook-github-action aar0nism/discord-webhook-github-action:latest
REM start container
docker run --rm aar0nism/discord-webhook-github-action