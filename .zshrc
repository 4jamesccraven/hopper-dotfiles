# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/acc.cravenj6/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY

hash -d cd="$HOME/Code"
hash -d dcs="$HOME/Documents"

. "$HOME/.cargo/env"

export PATH=/home/acc.cravenj6/bin/fastfetch/build:$PATH
export PATH=/home/acc.cravenj6/bin/nvim/bin:$PATH
export PATH=/home/acc.cravenj6/bin/figlet/bin:$PATH
export PATH=/home/acc.cravenj6/bin/cbonsai/bin:$PATH
export PATH=/home/acc.cravenj6/bin/lolcat/bin:$PATH
export PATH=/home/acc.cravenj6/bin/jp2a/bin:$PATH
export PATH=/home/acc.cravenj6/bin/fzf/bin:$PATH
export PATH=/home/acc.cravenj6/bin/cmake/bin:$PATH
export PATH=/home/acc.cravenj6/bin/python/bin:$PATH
export PATH=/home/acc.cravenj6/bin/ninja:$PATH
export PATH=/home/acc.cravenj6/bin/btop/bin:$PATH
export PATH=/home/acc.cravenj6/bin/clangd/bin:$PATH
export PATH=/home/acc.cravenj6/bin/brave-nightly:$PATH
export PATH=/home/acc.cravenj6/bin/zsh/bin:$PATH

export PATH=/home/acc.cravenj6/bin/scripts:$PATH

# PROMPT='%F{#CA9EE6}╭─(%f/ˈiː.ən/%F{#CA9EE6}@%m): [%f%~%F{#CA9EE6}]
# ╰─❯ %f'

eval "$(starship init zsh)"

source <(fzf --zsh)
bindkey "^f" fzf-history-widget

alias man="TERM=xterm-256color man"
alias c="clear"

alias ls="lsd"
alias ll="lsd -l"
alias lt="lsd --tree"
alias la="lsd -A"
alias lla="lsd -lA"

alias cat="bat"

alias ff="fastfetch"
alias cff="clear && fastfetch"

alias vi="nvim"
alias vim="nvim"

alias python="python3"
alias pip="pip3"

alias search='cd $(/home/acc.cravenj6/bin/scripts/file-search.sh)'

alias vv="source ./venv/bin/activate"

if [ -n "$SSH_CONNECTION" ]; then
    pretty_startup || logout
else
    cff
fi
