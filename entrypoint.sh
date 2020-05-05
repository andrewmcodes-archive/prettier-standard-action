#!/bin/sh -l

set -e
if [ -e node_modules/.bin/prettier-standard ]; then
    setup=""
else
  setup="yarn --non-interactive --silent --ignore-scripts --production=false &&"
fi

glob="${INPUT_GLOB}"

echo "==== Running Prettier-Standard ====="
sh -c "$setup ./node_modules/.bin/prettier-standard --check $glob"
