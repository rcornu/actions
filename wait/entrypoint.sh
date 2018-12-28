#!/bin/sh

set -e

log () {
    echo "$1: $2"
    if [ "$1" == 'ERROR' ]; then
        exit 1
    fi
}

if [ -z "$INTERVAL" ]; then
    INTERVAL=5
    log 'WARNING' "INTERVAL is undefined, default is $INTERVAL seconds"
fi

if [ -z "$HOST" ]; then
    HOST="google.com"
    log 'WARNING' "HOST is undefined, default is $HOST"
fi

if [ -z "$PORT" ]; then
    PORT=80
    log 'WARNING' "PORT is undefined, default is $PORT"
fi

if [ -z "$TIMEOUT" ]; then
    TIMEOUT=300
    log 'WARNING' "TIMEOUT is undefined, default is $TIMEOUT seconds"
fi

until nc -z -v -w90 $HOST $PORT
do
    TIMEOUT=`expr $TIMEOUT - $INTERVAL`
    if [ $TIMEOUT -lt 0 ]; then
        break
    fi

    sleep "$INTERVAL"
done
