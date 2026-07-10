#!/usr/bin/env bash

kittyConfigDir="${HOME}/.config/kitty"
stateFile="${kittyConfigDir}/.theme-state"
starshipConfigFile="${HOME}/.config/starship.toml"

if [ -f "${stateFile}" ] && [ "$(cat "${stateFile}")" = "light" ]; then
    cp "${kittyConfigDir}/starship-light.toml" "${starshipConfigFile}"
else
    cp "${kittyConfigDir}/starship-dark.toml" "${starshipConfigFile}"
fi
