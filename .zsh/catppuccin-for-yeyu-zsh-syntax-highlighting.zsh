# Catppuccin for Yeyu Theme (for zsh-syntax-highlighting)
#
# Source this file before loading the zsh-syntax-highlighting plugin.

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

typeset -gA ZSH_HIGHLIGHT_STYLES

catppuccin-for-yeyu-apply-dark-colors() {
  export CLICOLOR=1
  export LSCOLORS='FxFxCxDxDxExExBxDxBxDx'
  export LS_COLORS='di=1;38;2;255;183;197:ln=38;2;247;168;196:so=38;2;167;199;162:pi=38;2;244;167;185:ex=1;38;2;167;199;162:bd=38;2;236;127;169:cd=38;2;236;127;169:su=1;38;2;212;93;143:sg=1;38;2;212;93;143:tw=1;38;2;167;199;162:ow=1;38;2;244;167;185'

  ZSH_HIGHLIGHT_STYLES[default]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#EC7FA9,bold'
  ZSH_HIGHLIGHT_STYLES[alias]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#F4A7B9,bold,underline'
  ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#EC7FA9,bold'
  ZSH_HIGHLIGHT_STYLES[builtin]='fg=#F7A8C4,bold'
  ZSH_HIGHLIGHT_STYLES[function]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[command]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[precommand]='fg=#D45D8F,italic'
  ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#FFB7C5,italic,underline'
  ZSH_HIGHLIGHT_STYLES[path]='fg=#FFB7C5,underline'
  ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#EC7FA9,underline'
  ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#FFB7C5,underline'
  ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#EC7FA9,underline'
  ZSH_HIGHLIGHT_STYLES[globbing]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#EC7FA9,bold'
  ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=#F4A7B9'
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#D45D8F'
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#D45D8F'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[assign]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[redirection]='fg=#F4A7B9'
  ZSH_HIGHLIGHT_STYLES[comment]='fg=#A7C7A2,italic'
  ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[arg0]='fg=#F4A7B9,bold'

  ZSH_HIGHLIGHT_STYLES[arg0_alias]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_builtin]='fg=#F7A8C4,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_command]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_function]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[arg0_hashed-command]='fg=#F4A7B9,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_reserved-word]='fg=#EC7FA9,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_precommand]='fg=#D45D8F,italic'
  ZSH_HIGHLIGHT_STYLES[arg0_suffix-alias]='fg=#F4A7B9,bold,underline'
  ZSH_HIGHLIGHT_STYLES[arg0_global-alias]='fg=#EC7FA9,bold'

  ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=#D45D8F,bold'
  ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=#D45D8F'
  ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=#F4A7B9'
  ZSH_HIGHLIGHT_STYLES[bracket-level-6]='fg=#A7C7A2'
  ZSH_HIGHLIGHT_STYLES[bracket-level-7]='fg=#F7A8C4'
  ZSH_HIGHLIGHT_STYLES[bracket-level-8]='fg=#FFB7C5'
  ZSH_HIGHLIGHT_STYLES[bracket-level-9]='fg=#EC7FA9'
  ZSH_HIGHLIGHT_STYLES[bracket-level-10]='fg=#F4A7B9'
  ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg=#1F1720,bg=#FFB7C5,bold'

  ZSH_HIGHLIGHT_STYLES[cursor]='fg=#1F1720,bg=#F7A8C4,bold'
}

catppuccin-for-yeyu-apply-light-colors() {
  export CLICOLOR=1
  export LSCOLORS='BxFxCxDxCxExExBxDxBxDx'
  export LS_COLORS='fi=38;2;47;49;72:di=1;38;2;181;64;99:ln=38;2;143;47;93:so=38;2;45;127;31:pi=38;2;171;73;92:ex=1;38;2;31;122;46:bd=38;2;161;55;96:cd=38;2;161;55;96:su=1;38;2;143;47;93:sg=1;38;2;143;47;93:tw=1;38;2;45;127;31:ow=1;38;2;171;73;92'

  ZSH_HIGHLIGHT_STYLES[default]='fg=#2F3148'
  ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#9A3760,bold'
  ZSH_HIGHLIGHT_STYLES[alias]='fg=#B54063,bold'
  ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#B54063,bold,underline'
  ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#9A3760,bold'
  ZSH_HIGHLIGHT_STYLES[builtin]='fg=#B54063,bold'
  ZSH_HIGHLIGHT_STYLES[function]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[command]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[precommand]='fg=#8F2F5D,italic'
  ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#A83A5D,italic,underline'
  ZSH_HIGHLIGHT_STYLES[path]='fg=#A83A5D,underline'
  ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#9A3760,underline'
  ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#A83A5D,underline'
  ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#9A3760,underline'
  ZSH_HIGHLIGHT_STYLES[globbing]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#9A3760,bold'
  ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=#B54063'
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#8F2F5D'
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#8F2F5D'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[assign]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[redirection]='fg=#B54063'
  ZSH_HIGHLIGHT_STYLES[comment]='fg=#2D7F1F,italic'
  ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[arg0]='fg=#7F2D50,bold'

  ZSH_HIGHLIGHT_STYLES[arg0_alias]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_builtin]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_command]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_function]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[arg0_hashed-command]='fg=#7F2D50,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_reserved-word]='fg=#9A3760,bold'
  ZSH_HIGHLIGHT_STYLES[arg0_precommand]='fg=#8F2F5D,italic'
  ZSH_HIGHLIGHT_STYLES[arg0_suffix-alias]='fg=#7F2D50,bold,underline'
  ZSH_HIGHLIGHT_STYLES[arg0_global-alias]='fg=#9A3760,bold'

  ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=#8F2F5D,bold'
  ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=#8F2F5D'
  ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=#B54063'
  ZSH_HIGHLIGHT_STYLES[bracket-level-6]='fg=#2D7F1F'
  ZSH_HIGHLIGHT_STYLES[bracket-level-7]='fg=#4C4F69'
  ZSH_HIGHLIGHT_STYLES[bracket-level-8]='fg=#A83A5D'
  ZSH_HIGHLIGHT_STYLES[bracket-level-9]='fg=#9A3760'
  ZSH_HIGHLIGHT_STYLES[bracket-level-10]='fg=#B54063'
  ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg=#1F1720,bg=#A83A5D,bold'

  ZSH_HIGHLIGHT_STYLES[cursor]='fg=#1F1720,bg=#4C4F69,bold'
}

catppuccin-for-yeyu-sync-colors() {
  local themeState
  themeState="$(<"${HOME}/.config/kitty/.theme-state")"

  if [[ "${themeState}" == "light" ]]; then
    catppuccin-for-yeyu-apply-light-colors
  else
    catppuccin-for-yeyu-apply-dark-colors
  fi
}

catppuccin-for-yeyu-ls-colors() {
  catppuccin-for-yeyu-sync-colors

  if [[ -z "${precmd_functions[(r)catppuccin-for-yeyu-sync-colors]}" ]]; then
    precmd_functions+=(catppuccin-for-yeyu-sync-colors)
  fi
}

catppuccin-for-yeyu-sync-colors
