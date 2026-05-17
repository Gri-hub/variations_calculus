#!/usr/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

if [ "$EUID" -ne 0 ]; then 
  echo "Error: ./configure.sh must be run as root (e.g., using sudo)!"
  exit 1
fi

echo "Updating package lists..."
apt-get update

echo "Installing LaTeX dependencies..."
apt-get install -y \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-latex-extra \
  texlive-lang-cyrillic

echo "Configuration complete!"
