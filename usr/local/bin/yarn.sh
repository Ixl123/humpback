#!/usr/bin/env bash

set -e
set -x

cd /app


/usr/bin/yarn
/usr/bin/yarn $*
