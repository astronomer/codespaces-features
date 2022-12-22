#!/bin/sh
set -e

VERSION=${VERSION:-"latest"}

echo "[Astronomer] Installing astro-cli:${VERSION}"

if [ "$(id -u)" != 0 ]; then
    curl -sSL install.astronomer.io | sudo bash -s -- $VERSION
else
    curl -sSL install.astronomer.io | bash -s -- $VERSION
fi

echo "[Astronomer] Install complete!"
astro version