#!/usr/bin/env bash

set -euo pipefail

kittyConfigDir="${HOME}/.config/kitty"
currentThemeFile="${kittyConfigDir}/current-theme.conf"
darkTheme="${kittyConfigDir}/theme-dark.conf"
lightTheme="${kittyConfigDir}/theme-light.conf"
stateFile="${kittyConfigDir}/.theme-state"

if [ -f "${stateFile}" ]; then
    current=$(<"${stateFile}")
else
    current=dark
fi

if [ "${current}" = "dark" ]; then
    nextTheme="${lightTheme}"
    nextState=light
else
    nextTheme="${darkTheme}"
    nextState=dark
fi

kitten @ set-colors --all --configured "${nextTheme}"
ln -sf "${nextTheme}" "${currentThemeFile}"
printf '%s\n' "${nextState}" > "${stateFile}"
"${kittyConfigDir}/sync-starship-theme.sh"
