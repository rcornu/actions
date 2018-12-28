#!/bin/sh

set -e

output=$( sh -c "sonar-scanner $*" )
echo "$output"