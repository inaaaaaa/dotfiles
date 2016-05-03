# prompt
export PS1="\[\033[1;37m\][\t]\u@\h:\w\[\033[0m\]\n$ " # white(37)

# path
export PATH=${HOME}/bin:${HOME}/local/bin:${PATH}

# alias
if [ $(uname) == 'Darwin' ]; then
    alias l='ls -FG'
    alias la='ls -FGa'
    alias ll='ls -FGl'
    alias ls='ls -FG'
    alias lla='ls -FGal'
else
    alias l='ls -F --color'
    alias la='ls -Fa --color'
    alias ll='ls -Fl --color'
    alias ls='ls -F --color'
    alias lla='ls -Fal --color'
fi

alias cp='cp -i'
alias e='emacsclient --no-wait'
alias em='emacs'
alias g='git branch && git status --short'
alias mv='mv -i'
alias rm='rm -i'
alias t='tmux'

# function
function cd() {
    dir=$1
    builtin cd $dir && ls
}

function grepz() {
    word=$1
    grep --context=2 --color=always --ignore-case --line-number --recursive $word .
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

function ls_my_commands() {
    if [ -e ${HOME}/bin ]; then
        echo "${HOME}/bin"
        ls ${HOME}/bin/
        echo ""
    else
        echo "${HOME}/bin doesn't exist."
    fi
    if [ -e ${HOME}/local/bin ]; then
        echo "${HOME}/local/bin"
        ls ${HOME}/local/bin/
        echo ""
    else
        echo "${HOME}/local/bin doesn't exist."
    fi
}

# history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

# read local settings
test -r ~/.bashrc.local && . ~/.bashrc.local
