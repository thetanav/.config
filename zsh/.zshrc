export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# cpp quick run
# Run a cpp file just by `cpp filename`
alias crun='function _run() { g++ -std=c++17 -O2 -Wall "$1".cpp -o "$1" && ./"$1"; }; _run'
# Copy a cpp file just by `copy filename`
alias copy='function _run() { xclip -sel clip < "$1" }; _run'
# Diff check a cpp file just by `cppdif filename`
alias cdiff='function _run() { diff out expected}; _run'

# pnpm
export PNPM_HOME="/home/tanav/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

autoload -U colors && colors
bindkey -e
PS1="%{$fg[magenta]%}%~%{$fg[red]%} %{$reset_color%}$%b "

source <(fzf --zsh)
# Basic auto/tab complete:
autoload -U compinit && compinit
autoload -U colors && colors
zmodload zsh/complist

alias venv="source .venv/bin/activate"
alias vim=nvim
alias vi="nvim"
alias im="nvim"
alias nm="neomutt"
alias p="poetry"
alias yt="lux"
alias dl="lux"
alias rip="yt-dlp -x --audio-format=\"mp3\""

export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# edit command line
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line
export HISTIGNORE='exit:cd:ls:bg:fg:history:f:fd:vim'

MAILSYNC_MUTE=1

# Load zsh-syntax-highlighting; should be last.
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
