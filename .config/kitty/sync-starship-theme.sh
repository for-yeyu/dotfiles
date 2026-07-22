#!/usr/bin/env bash

kittyConfigDir="${HOME}/.config/kitty"
stateFile="${kittyConfigDir}/.theme-state"
starshipConfigFile="${HOME}/.config/starship.toml"

if [ -f "${stateFile}" ] && [ "$(cat "${stateFile}")" = "light" ]; then
    perl -pi -e 's/#7AA2F7/#2E7DE9/g; s/#7DCFFF/#007197/g; s/#BB9AF7/#9854F1/g; s/#9D7CD8/#7847BD/g; s/#9ECE6A/#587539/g' "${starshipConfigFile}"
else
    perl -pi -e 's/#2E7DE9/#7AA2F7/g; s/#007197/#7DCFFF/g; s/#9854F1/#BB9AF7/g; s/#7847BD/#9D7CD8/g; s/#587539/#9ECE6A/g' "${starshipConfigFile}"
fi
