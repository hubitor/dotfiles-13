set -x EDITOR nvim
set -x PATH $PATH ~/scripts (ruby -e 'print Gem.user_dir')/bin

set -x LESS_TERMCAP_mb \e'[01;31m'
set -x LESS_TERMCAP_md \e'[01;31m'
set -x LESS_TERMCAP_me \e'[0m'
set -x LESS_TERMCAP_se \e'[0m'
set -x LESS_TERMCAP_so \e'[01;44;33m'
set -x LESS_TERMCAP_ue \e'[0m'
set -x LESS_TERMCAP_us \e'[01;32m'

set fish_greeting

abbr -a gs git status
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit
abbr -a gd git diff
abbr -a go git checkout
abbr -a gh git hist
abbr -a gp git pull
abbr -a gu git push
abbr -a gm git merge
abbr -a gl git log

function sudo!!
    eval sudo $history[1]
end
