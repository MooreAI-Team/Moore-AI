#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

cd "$APP_DIR"

echo "Updating Moore AI from git..."
git pull --ff-only

echo "Building and restarting Docker Compose services..."
docker compose up -d --build --pull always

echo "Current service status:"
docker compose ps
