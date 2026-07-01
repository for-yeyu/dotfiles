#!/usr/bin/env bash

KITTY_CONFIG_DIR="${HOME}/.config/kitty"
CURRENT_THEME_FILE="${KITTY_CONFIG_DIR}/current-theme.conf"
DARK_THEME="${KITTY_CONFIG_DIR}/theme-dark.conf"
LIGHT_THEME="${KITTY_CONFIG_DIR}/theme-light.conf"
STATE_FILE="${KITTY_CONFIG_DIR}/.theme-state"

if [ -f "${STATE_FILE}" ]; then
    CURRENT=$(cat "${STATE_FILE}")
else
    CURRENT=dark
fi

if [ "$CURRENT" = "dark" ]; then
    ln -sf "${LIGHT_THEME}" "${CURRENT_THEME_FILE}"
    echo "light" > "${STATE_FILE}"
    "${KITTY_CONFIG_DIR}/sync-starship-theme.sh"
    kitty @ set-colors --all --configured "${LIGHT_THEME}"
else
    ln -sf "${DARK_THEME}" "${CURRENT_THEME_FILE}"
    echo "dark" > "${STATE_FILE}"
    "${KITTY_CONFIG_DIR}/sync-starship-theme.sh"
    kitty @ set-colors --all --configured "${DARK_THEME}"
fi
