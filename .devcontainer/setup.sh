#!/bin/bash
set -e

echo "Updating packages..."
sudo apt-get update -y
sudo apt-get install -y python3 python3-pip curl git

# NodeJS (optional for Gemini CLI JS usage)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Gemini CLI
echo "Installing Gemini CLI..."
curl -fsSL https://gemini.com/install.sh | bash || echo "Gemini install may require manual steps"

# Install Claude CLI (Anthropic)
echo "Installing Claude CLI..."
pip install --upgrade anthropic

# Optional: Python AI packages
pip install --upgrade openai plotly
