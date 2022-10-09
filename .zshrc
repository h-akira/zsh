ZDOTDIR="${HOME}/.zsh"

export LANG=en_US.UTF-8
export LC_COLLATE=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

export VISUAL=vim
export EDITOR=vim
export GIT_EDITOR=vim

export HISTFILE=${HOME}/.zsh_history  # set your own history file

alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

export PYTHONDONTWRITEBYTECODE=1
function chpwd() { ls }

source ${ZDOTDIR}/add.zshrc
source ${ZDOTDIR}/zinitrc

# 補完を有効化
autoload -Uz compinit && compinit
# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
# 矢印で候補を選べるようにする
zstyle ':completion:*:default' menu select=1


