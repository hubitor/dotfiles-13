set -x EDITOR nvim
set -x PATH $PATH ~/scripts

set -x LESS_TERMCAP_mb \e'[01;31m'
set -x LESS_TERMCAP_md \e'[01;31m'
set -x LESS_TERMCAP_me \e'[0m'
set -x LESS_TERMCAP_se \e'[0m'
set -x LESS_TERMCAP_so \e'[01;44;33m'
set -x LESS_TERMCAP_ue \e'[0m'
set -x LESS_TERMCAP_us \e'[01;32m'

set fish_greeting

alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gh='git hist'
alias gp='git pull'
alias gu='git push'
alias gm='git merge'
alias gl='git log'

function sudo!!
    eval sudo $history[1]
end
