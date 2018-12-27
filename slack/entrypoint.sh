#!/bin/sh

set -e

[ -z "$CHANNEL" ]       && { CHANNEL="general"; echo "WARNING: CHANNEL is undefined, default is $CHANNEL"; }
[ -z "$ICON_EMOJI" ]    && { ICON_EMOJI=":octocat:"; echo "WARNING: ICON_EMOJI is undefined, default is $ICON_EMOJI"; }
[ -z "$USERNAME" ]      && { USERNAME="Github"; echo "WARNING: USERNAME is undefined, default is $USERNAME"; }
[ -z "$WEBHOOK_URL" ]   && { echo "ERROR: WEBHOOK_URL is undefined"; exit 1; }

if [ "$*" == '' ]
then
    echo "ERROR: no argument found";
else
    curl -X POST -H 'Content-type: application/json' --data "{'channel':'$CHANNEL','icon_emoji':'$ICON_EMOJI','text':'$*','username':'$USERNAME'}" $WEBHOOK_URL
fi