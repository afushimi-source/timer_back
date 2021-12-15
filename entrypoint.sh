#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid
# WARNING:createはfargateの初回のみ実行
bundle exec rails db:create
bundle exec ridgepole -a -E development -c config/database.yml -f db/Schemafile

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
