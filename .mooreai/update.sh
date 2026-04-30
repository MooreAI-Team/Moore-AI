#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
LOG_FILE="${TMPDIR:-/tmp}/moore-ai-update.log"

on_error() {
  echo "Update failed. See $LOG_FILE"
}

trap on_error ERR

cd "$APP_DIR"
: > "$LOG_FILE"

git pull --ff-only --quiet >> "$LOG_FILE" 2>&1

docker compose up -d --build --pull always --quiet-pull >> "$LOG_FILE" 2>&1

echo "Update complete: $(git rev-parse --short HEAD)"
