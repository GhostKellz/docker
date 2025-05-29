#!/bin/bash
set -e

echo "[nv-palladium] Booting container..."
cd /runner

if [ ! -d ".runner" ]; then
  echo "[nv-palladium] Configuring runner..."
  ./config.sh \
    --url https://github.com/GhostKellz/ghostctl \
    --token TOKENSTRINGHERE \
    --name nv-palladium \
    --labels self-hosted,nvidia,gpu,ghostctl,palladium \
    --unattended
else
  echo "[nv-palladium] Already configured."
fi

echo "[nv-palladium] Starting runner..."
exec ./run.sh
