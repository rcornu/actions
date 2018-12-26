#!/bin/sh

set -e

[ -z "$INTERVAL" ]  && { INTERVAL=5; echo "WARNING: INTERVAL is undefined, default is $INTERVAL seconds"; }
[ -z "$HOST" ]      && { HOST="google.com"; echo "WARNING: HOST is undefined, default is $HOST"; }
[ -z "$PORT" ]      && { PORT=80; echo "WARNING: PORT is undefined, default is $PORT"; }
[ -z "$TIMEOUT" ]   && { TIMEOUT=300; echo "WARNING: TIMEOUT is undefined, default is $TIMEOUT seconds"; }

until nc -z -v -w90 $HOST $PORT
do
    TIMEOUT=`expr $TIMEOUT - $INTERVAL`
    if [ $TIMEOUT -lt 0 ]
    then
        break
    fi

    sleep "$INTERVAL"
done
