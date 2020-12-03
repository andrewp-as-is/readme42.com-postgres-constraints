#!/usr/bin/env bash
{ set +x; } 2>/dev/null

SSH_HOSTNAME="aws"
IMAGE="readme42.com-postgres-constraints"
ENV_FILE=/home/ubuntu/env/readme42.com/readme42.com-postgres-constraints.env

( set -x; ssh "$SSH_HOSTNAME" sudo docker run --env-file "$ENV_FILE" "$IMAGE" python -u manage.py add_constraints )
