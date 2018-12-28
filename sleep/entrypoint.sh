#!/bin/sh

set -e

log () {
    echo "$1: $2"
    if [ "$1" == 'ERROR' ]; then
        exit 1
    fi
}

if [ "$*" == '' ]; then
    log 'ERROR' 'No argument found'
else
    sleep "$*"
fi