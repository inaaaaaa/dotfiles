## prompt
# (cyan, white, yellow, red) = (36, 37, 33, 31)
_ps_color=37
export PS1="\[\033[1;${_ps_color}m\][\t]\u@\h:\w\[\033[0m\]\n$ "

## path
#export PATH=${HOME}/local/bin:${PATH}

## alias
_ls_color="--color"
if [ $(uname) == 'Darwin' ]; then
    _ls_color="-G"
fi
alias em='emacs'
alias e='emacsclient --no-wait'
alias l="ls -F ${_ls_color}"
alias ls="ls -F ${_ls_color}"
alias la="ls -aF ${_ls_color}"
alias ll="ls -lF ${_ls_color}"
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias t='tmux'
alias g='git branch; git status --short'

## function
function cd() {
    _dir=$1
    builtin cd $_dir && ls
}

function fullpath() {
    _file=$1
    echo "$(pwd)/${_file}"
}

function grepz() {
    _word=$1
    grep -rni -C 2 --color=always $_word .
}

function g_checkout() {
    git branch | awk '{print NR, $0}'
    echo "which?"
    read ans
    git checkout $(git branch | sed 's/\*//' | awk '{print $1}' | sed -n "$ans,1p")
}

function g_push() {
    branch=$(git branch | grep * | awk '{print $2}')
    git push origin $branch:$branch
}

function g_add() {
    git status --short
    files=$(git status --short | awk '{print $2}')
    for f in $files; do
        echo "add? : $f [y/N]"
        read ans
        if [ "$ans" = "y" ]; then
            git add $f
        fi
    done
    git status --short
}

## history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

## read local settings
test -r ~/.bashrc.local && . ~/.bashrc.local
