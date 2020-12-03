#!/usr/bin/env bash
{ set +x; } 2>/dev/null

SSH_HOSTNAME="aws"
IMAGE="requires42.com-postgres-commands"
ENV_FILE=/home/ubuntu/env/requires42.com/requires42.com-postgres-commands.env

ssh "$SSH_HOSTNAME" sudo docker run --env-file "$ENV_FILE" "$IMAGE" python -u manage.py migrate
