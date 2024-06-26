# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [[ -n $(command -v tmux) ]] && [[ -n "$PS1" ]] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [[ -z "$TMUX" ]]; then
    session_name=$(basename "${HOME}" | tr . _ | tr [:space:] _)
    exec tmux new -A -s "$session_name" -c "${HOME}"
fi

# exiting vim cursor fix
_fix_cursor() {
   echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)
# fpath=(~/.just-zsh $fpath)

source ~/code/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(starship init zsh)"

# Set up the prompt

autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

compdef _just just

# fpath+=~/.zsh/completions

plugins=(tmux)
ZSH_TMUX_AUTOSTART=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/code/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.bash_aliases
source $HOME/export-esp.sh

# export ZSH=$HOME/.oh-my-zsh
# source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=${PATH}:`go env GOPATH`/bin
export PATH=${PATH}:"$HOME/.config/composer/vendor/bin"

[ -f "~/.ghcup/env" ] && source "~/.ghcup/env" # ghcup-env

# pnpm
export PNPM_HOME="~/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export EDITOR=nvim
export PATH=$PATH:~/.local/bin
eval $(thefuck --alias)

# opam configuration
[[ ! -r ~/.opam/opam-init/init.zsh ]] || source ~/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export PATH=$PATH:~/Downloads/roc_nightly-linux_x86_64-2024-03-25-4dca054
export PATH=~/.cache/rebar3/bin:$PATH

eval "$(atuin init zsh)"
