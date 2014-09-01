#!/bin/bash

set -x

echo "Installing Prelude"
sudo -u marc -H bash -c "curl -L http://git.io/epre | sh"

echo "Starting Tmux"
sudo -u marc -H bash -c "tmux new -d"
