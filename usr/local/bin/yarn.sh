#!/usr/bin/env bash

set -e
set -x

cd /app

/bin/pwd
/bin/ls -ali /app

/usr/bin/yarn
/usr/bin/yarn $*
