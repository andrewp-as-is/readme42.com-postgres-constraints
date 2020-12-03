#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; export DJANGO_SETTINGS_MODULE=settings; { set +x; } 2>/dev/null; }
{ set -x; export DJANGO_CONFIGURATION=Dev; { set +x; } 2>/dev/null; }

{ set -o allexport; . .env || exit; }

( set -x; python -u manage.py reindex )
