#!/bin/sh

set -e

output=$( sh -c "/bin/terragrunt $*" )
echo "$output"