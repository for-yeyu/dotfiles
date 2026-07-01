typeset -U path fpath

export ZSH="$HOME/.oh-my-zsh"
fpath=("$HOME/.docker/completions" $fpath)

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$HOME/.zsh/catppuccin-for-yeyu-zsh-syntax-highlighting.zsh"
source "$ZSH/oh-my-zsh.sh"
catppuccin-for-yeyu-ls-colors

# package managers
export PNPM_HOME="$HOME/Library/pnpm"
export BUN_INSTALL="$HOME/.bun"
path=("$PNPM_HOME" "$BUN_INSTALL/bin" $path)

[[ -s "$BUN_INSTALL/_bun" ]] && source "$BUN_INSTALL/_bun"

alias p="pnpm"
alias cc="clear"
alias ccp="clear && pnpm dev"

# editor
alias vi="nvim"
alias vv="nvim"

# python
alias pt="python3"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
path+=(
  "$ANDROID_HOME/platform-tools"
  "$ANDROID_HOME/tools"
  "$ANDROID_HOME/tools/bin"
  "$ANDROID_HOME/emulator"
)

# Ruby
path=("/opt/homebrew/opt/ruby/bin" "$HOME/.rbenv/bin" $path)
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"
eval "$(rbenv init -)"

# proxy functions
proxy_on() {
  local proxyUrl="http://127.0.0.1:7897"
  local socksProxyUrl="socks5://127.0.0.1:7897"

  export http_proxy="$proxyUrl"
  export https_proxy="$proxyUrl"
  export all_proxy="$socksProxyUrl"
  export HTTP_PROXY="$http_proxy"
  export HTTPS_PROXY="$https_proxy"
  export ALL_PROXY="$all_proxy"

  echo "proxy enabled"
}

proxy_off() {
  unset http_proxy https_proxy all_proxy
  unset HTTP_PROXY HTTPS_PROXY ALL_PROXY
  echo "proxy disabled"
}

proxy_on

# starship
eval "$(starship init zsh)"

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
