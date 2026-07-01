# Catppuccin for Yeyu Theme (for zsh-syntax-highlighting)
#
# Source this file before loading the zsh-syntax-highlighting plugin.

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

export LS_COLORS='di=1;38;2;255;183;197:ln=38;2;247;168;196:so=38;2;167;199;162:pi=38;2;244;167;185:ex=1;38;2;167;199;162:bd=38;2;236;127;169:cd=38;2;236;127;169:su=1;38;2;212;93;143:sg=1;38;2;212;93;143:tw=1;38;2;167;199;162:ow=1;38;2;244;167;185'

catppuccin-for-yeyu-ls-colors() {
  export CLICOLOR=1
  export LSCOLORS='FxFxCxDxDxExExBxDxBxDx'
  export LS_COLORS='di=1;38;2;255;183;197:ln=38;2;247;168;196:so=38;2;167;199;162:pi=38;2;244;167;185:ex=1;38;2;167;199;162:bd=38;2;236;127;169:cd=38;2;236;127;169:su=1;38;2;212;93;143:sg=1;38;2;212;93;143:tw=1;38;2;167;199;162:ow=1;38;2;244;167;185'
}

typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter
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

# Forward-compatible command-word styles
ZSH_HIGHLIGHT_STYLES[arg0_alias]='fg=#F4A7B9,bold'
ZSH_HIGHLIGHT_STYLES[arg0_builtin]='fg=#F7A8C4,bold'
ZSH_HIGHLIGHT_STYLES[arg0_command]='fg=#F4A7B9,bold'
ZSH_HIGHLIGHT_STYLES[arg0_function]='fg=#EC7FA9'
ZSH_HIGHLIGHT_STYLES[arg0_hashed-command]='fg=#F4A7B9,bold'
ZSH_HIGHLIGHT_STYLES[arg0_reserved-word]='fg=#EC7FA9,bold'
ZSH_HIGHLIGHT_STYLES[arg0_precommand]='fg=#D45D8F,italic'
ZSH_HIGHLIGHT_STYLES[arg0_suffix-alias]='fg=#F4A7B9,bold,underline'
ZSH_HIGHLIGHT_STYLES[arg0_global-alias]='fg=#EC7FA9,bold'

# Brackets highlighter
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

# Cursor highlighter
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#1F1720,bg=#F7A8C4,bold'
