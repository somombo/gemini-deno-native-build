echo "GEMINI_CLI_NO_RELAUNCH=true" > .env
rm -rf ./bin/*
mkdir -p ./bin
# DENO_COMPAT=1 deno compile -A --env-file=.env --no-check -o bin/gemini npm:@google/gemini-cli
DENO_COMPAT=1 deno compile -A --env-file=.env --no-check -o ./bin/gemini https://github.com/google-gemini/gemini-cli/releases/download/v0.13.0/gemini.js