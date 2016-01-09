## prompt
# (cyan, white) = (36, 37)
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

## function
function cd() {
  _target_dir=$1
  builtin cd ${_target_dir} && ls
}

function fullpath() {
  _target_file=$1
  echo "$(pwd)/${_target_file}"
}

function grepz() {
  _target_word=$1
  grep -rni -C 2 --color=always $_target_word .
}

## history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

## read local settings
test -r ~/.bashrc.local && . ~/.bashrc.local
