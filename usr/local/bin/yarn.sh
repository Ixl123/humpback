#!/usr/bin/env bash

set -e
set -x

cd $1

/bin/pwd
/bin/ls -ali

/usr/bin/yarn

/usr/bin/yarn test

/usr/bin/yarn build

