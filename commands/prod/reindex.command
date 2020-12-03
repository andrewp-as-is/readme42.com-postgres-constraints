#!/usr/bin/env bash
{ set +x; } 2>/dev/null

SSH_HOSTNAME="ubuntu@github42"
IMAGE="github42.com-postgres-commands"
ENV_FILE=./github42.env

ssh "$SSH_HOSTNAME" sudo docker run --env-file "$ENVFILE" "$IMAGE" python -u manage.py reindex
