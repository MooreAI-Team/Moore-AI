#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/home/judah/Dockers/Moore-AI"

cd "$APP_DIR"

echo "Updating Moore AI from git..."
git pull --ff-only

echo "Building and restarting Docker Compose services..."
docker compose up -d --build --pull always

echo "Current service status:"
docker compose ps
