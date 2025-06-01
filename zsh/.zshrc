# Powerlevel10k Instant Prompt Configuration
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
source "$HOME/.cargo/env"
source "$HOME/.deno/env"

eval "$(zoxide init zsh)"
[ -s "/home/simon/.bun/_bun" ] && source "/home/simon/.bun/_bun"


# PATH Configurations
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.config/emacs/bin"
export PATH="$PATH:$HOME/.cargo/bin" 
export PATH="$PATH:$HOME/.go/bin"
export PATH="$PATH:$HOME/.foundry/bin"
export PATH="$PATH:$NARGO_HOME/bin"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$(npm config get prefix)/bin"
export PATH="$PATH:/.bb"

# Environment Variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NARGO_HOME="/home/simon/.nargo"
export BUN_INSTALL="$HOME/.bun"
export GOPATH=$HOME/.go

# Alias Definitions
alias cd="z"
alias ls="exa"
alias la="exa -a"
alias ll="exa -l"
alias cat="batcat"

alias zshconfig="cd ~/.dotfiles/zsh/ && nvim .zshrc"
alias tmuxconfig="cd ~/.dotfiles/tmux/ && nvim .tmux.conf"
alias nvimconfig="cd ~/.dotfiles/nvim/.config/nvim/ && neovim . --fork"
alias emacsconfig="cd ~/.dotfiles/emacs/.config/emacs/ && emacsclient -cnqu -a 'emacs' ." 

alias dotfiles="code ~/.dotfiles"
alias playground="cd ~/Projects/Playground/ && neovim . --fork"
alias study="cd ~/Notes/Study/ && emacsclient -cnqu -a 'emacs' ."
alias learn="playground && study && exit"

alias alacritty-light="ln -s -f /home/simon/.config/alacritty/themes/themes/github_light.toml /home/simon/.config/alacritty/theme.toml"
alias alacritty-dark="ln -s -f /home/simon/.config/alacritty/themes/themes/github_dark.toml /home/simon/.config/alacritty/theme.toml"

# Keep at the end of ~/.zshrc
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
