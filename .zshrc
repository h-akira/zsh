ZDOTDIR="${HOME}/.zsh"

export LANG=en_US.UTF-8
export LC_COLLATE=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

export VISUAL=vim
export EDITOR=vim
export GIT_EDITOR=vim

# 履歴
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
function history-all { history -E 1 }


alias ls="ls -F --color=auto"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias ka="k -a"

export PYTHONDONTWRITEBYTECODE=1
function chpwd() { ls }

# 補完を有効化
autoload -Uz compinit && compinit
# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
# 矢印で候補を選べるようにする
zstyle ':completion:*:default' menu select=1
# 補完候補に色付け
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

source ${ZDOTDIR}/add.zshrc
source ${ZDOTDIR}/zinitrc
source ${ZDOTDIR}/bindkeyrc

