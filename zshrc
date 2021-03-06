# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
# ignore common commands
HISTORY_IGNORE='([bf]g *|cd *|l[a,l,s,h,]*)'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt HIST_IGNORE_DUPS

PROMPT='%F{#f0c0e0}%n%f@%F{#c0f0e0}%m%f %F{#c0e0f0}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'

# Auto refresh package name
zstyle ':completion:*' rehash true

# Syntax highlight (need zsh-syntax-highlighting package)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto suggestion https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=always'
alias ll='ls --color=always -lh'
alias ra='ranger'
alias open='xdg-open'
alias vimf='vim "$(fzf --height 40%)"'

#
zstyle ':completion:*:(ssh|scp|ftp|sftp):*' hosts $hosts
zstyle ':completion:*:(ssh|scp|ftp|sftp):*' users $users
