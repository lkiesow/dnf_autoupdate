#!/bin/sh
# Deploy this role with its default configuration to a single server.
#
# Usage: ./deploy.sh <server> [extra ansible-playbook arguments]
# Example: ./deploy.sh server.example.com -K
set -eu

if [ $# -lt 1 ]; then
  echo "Usage: $0 <server> [extra ansible-playbook args]" >&2
  exit 1
fi

server="$1"
shift

cd "$(dirname "$0")/.github"
exec ansible-playbook -i "${server}," deploy.yml "$@"
