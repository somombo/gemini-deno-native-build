#!/bin/bash
GEMINI_CLI_VERSION=v0.13.0
echo "GEMINI_CLI_NO_RELAUNCH=true" > .env
OUT_DIR=./dist
rm -rf $OUT_DIR/*
mkdir -p $OUT_DIR
# DENO_COMPAT=1 deno compile -A --env-file=.env --no-check --output=$OUT_DIR npm:@google/gemini-cli
# DENO_COMPAT=1 deno compile -A --env-file=.env --no-check --output=$OUT_DIR https://github.com/google-gemini/gemini-cli/releases/download/v0.13.0/gemini.js

wget https://github.com/google-gemini/gemini-cli/releases/download/$GEMINI_CLI_VERSION/gemini.js -O $OUT_DIR/gemini.js

export DENO_COMPAT=1 
deno compile -A --env-file=.env --no-check --output=$OUT_DIR/gemini  $OUT_DIR/gemini.js
