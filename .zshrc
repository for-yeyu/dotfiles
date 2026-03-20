export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/Lawliet/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias p="pnpm"
alias cc="clear"
alias ccp="clear && pnpm dev"

# bun completions
[ -s "/Users/Lawliet/.bun/_bun" ] && source "/Users/Lawliet/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# neovim
alias vi="nvim"
alias vv="nvim"

# python3
alias pt="python3"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Fuck React Native
# export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

. "$HOME/.local/bin/env"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# proxy functions
proxy_on() {
  export http_proxy="http://127.0.0.1:7897"
  export https_proxy="http://127.0.0.1:7897"
  export all_proxy="socks5://127.0.0.1:7897"
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
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/Lawliet/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
