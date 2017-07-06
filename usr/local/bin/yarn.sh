#!/usr/bin/env bash

set -e
set -x

cd $1

/bin/pwd
/bin/ls -ali

command -v nvm

nvm use

/usr/bin/yarn

/usr/bin/yarn build

CI=true /usr/bin/yarn test

