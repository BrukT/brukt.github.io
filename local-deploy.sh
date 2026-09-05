#!/usr/bin/env bash
set -euo pipefail

CONTAINER="jekyll-serve"
PORT="${PORT:-4000}"
IMAGE="jekyll/jekyll:pages"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! docker info >/dev/null 2>&1; then
  echo "Error: Docker is not running. Start Docker Desktop first." >&2
  exit 1
fi

if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER}$"; then
  echo "Stopping existing container '${CONTAINER}'..."
  docker rm -f "${CONTAINER}" >/dev/null
fi

echo "Starting Jekyll server on http://localhost:${PORT}/ (watch mode enabled)..."
docker run --rm \
  --name "${CONTAINER}" \
  -v "${DIR}":/srv/jekyll \
  -p "${PORT}:4000" \
  "${IMAGE}" \
  jekyll serve --watch --force_polling --port 4000 --host 0.0.0.0

echo ""
echo "Stopped. Press Ctrl+C while running to stop the server." >&2