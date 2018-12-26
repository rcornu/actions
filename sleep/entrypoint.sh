#!/bin/sh

set -e

if [ "$*" == '' ]
then
    seconds=5;
    echo "WARNING: no argument found, default value is $seconds seconds";
    sleep $seconds
else
    sleep "$*"
fi