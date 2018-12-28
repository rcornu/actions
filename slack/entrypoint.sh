#!/bin/sh

set -e

log () {
    echo "$1: $2"
    if [ "$1" == 'ERROR' ]; then
        exit 1
    fi
}

if [ -z "$CHANNEL" ]; then
    CHANNEL="general"
    log 'WARNING' "CHANNEL is undefined, defaults to $CHANNEL"
fi

if [ -z "$ICON" ]; then
    ICON=":octocat:"
    log 'WARNING' "ICON is undefined, defaults to $ICON"
fi

if [ -z "$USERNAME" ]; then
    USERNAME='Github'
    log 'WARNING' "USERNAME is undefined, defaults to $USERNAME"
fi

if [ -z "$WEBHOOK_URL" ]; then
    log 'ERROR' 'WEBHOOK_URL is undefined'
fi

if [ "$*" == '' ]; then
    log 'ERROR' 'No argument found'
else
    curl \
    -X POST \
    -H 'Content-type: application/json' \
    --data "{'channel':'$CHANNEL','icon_emoji':'$ICON','text':'$*','username':'$USERNAME'}" \
    $WEBHOOK_URL
fi