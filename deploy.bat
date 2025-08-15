REM to run this locally you need to specify the environment variables.

REM build image
docker build -t Chicken-Engine/discord-webhook-github-action:latest .
REM push to docker registry
docker push Chicken-Engine/discord-webhook-github-action:latest

REM for local testing
REM create container
REM docker container create --name discord-webhook-github-action Chicken-Engine/discord-webhook-github-action:latest
REM start container
REM docker run --rm aar0n