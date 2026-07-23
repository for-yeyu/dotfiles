#!/usr/bin/env bash

set -euo pipefail

kittyConfigDir="${HOME}/.config/kitty"

kitten @ load-config "${kittyConfigDir}/kitty.conf"
