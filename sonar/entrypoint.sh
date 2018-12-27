#!/bin/sh

set -e

output=$( sh -c "/bin/sonar-runner $*" )
echo "$output"