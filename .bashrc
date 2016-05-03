# prompt
export PS1="\[\033[1;37m\][\t]\u@\h:\w\[\033[0m\]\n$ " # white(37)

# path
export PATH=${HOME}/bin:${HOME}/local/bin:${PATH}

# alias
if [ $(uname) == 'Darwin' ]; then
    alias l="ls -FG"
    alias ls="ls -FG"
    alias la="ls -FGa"
    alias ll="ls -FGl"
    alias lla="ls -FGal"
else
    alias l="ls -F --color"
    alias ls="ls -F --color"
    alias la="ls -Fa --color"
    alias ll="ls -Fl --color"
    alias lla="ls -Fal --color"
fi
alias em='emacs'
alias e='emacsclient --no-wait'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias t='tmux'
alias g='git branch && git status --short'

# function
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

function g_push() {
    branch=$(git branch | grep \* | awk '{print $2}')
    git push origin $branch:$branch
}

function g_checkout_i() {
    git branch | awk '{print NR, $0}'
    echo "which?"
    read ans
    git checkout $(git branch | sed 's/\*//' | awk '{print $1}' | sed -n "$ans,1p")
}

# history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

# read local settings
test -r ~/.bashrc.local && . ~/.bashrc.local
