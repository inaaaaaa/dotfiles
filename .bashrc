export PS1="\[\033[1;37m\][\t]\u@\h:\w\[\033[0m\]\n$ " # white(37)
export PATH=${HOME}/bin:${HOME}/local/bin:${PATH}

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias t='tmux'
alias g='git branch && git status --short'
alias em='emacs'
alias e='emacsclient --no-wait'
alias z='echo $?'

if [ $(uname) == 'Darwin' ]; then
    alias l='ls -F -G'
    alias ls='ls -F -G'
    alias ll='ls -Fl -G'
    alias la='ls -Fla -G'
else
    alias l='ls -F --color'
    alias ls='ls -F --color'
    alias ll='ls -Fl --color'
    alias la='ls -Fla --color'
fi

function cd() {
    builtin cd $1 && ls
}

test -r ~/.bashrc.local && . ~/.bashrc.local
