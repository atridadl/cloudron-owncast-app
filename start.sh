#!/bin/bash

set -eu

chown -R www-data /app/data

echo "==> Starting Owncast"
cd /app/code/owncast
./owncast