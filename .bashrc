# .bashrc

## Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

export SHELL=/bin/bash

# SSH
ssh-add -K ~/.ssh/charon_rsa

# function list
login_jupiter(){
 ssh -L 9001:localhost:9001 atm
}

# Endian 
export GFORTRAN_CONVERT_UNIT='big_endian'

# User specific aliases and functions
alias lsh='ls -lt | head -10'
alias p='python'
alias py2='source activate py2'
alias py3='source activate py3'
alias e='emacs'
alias c='cd'
alias m='mv'
alias ls='ls -G'
alias l='ls -G'
alias la='ls -la -G'
alias lt='ls -lt -G'
alias ll='ls -l -G'
alias rmf='rm -fr'
alias g='grads -l'
alias gb='grads -bcpx'
alias h='head'
alias cb='cd ../'
alias go_atm="ssh atm"
alias go_arc="ssh arc"
alias go_ofp="ssh ofp"
alias go_charon="ssh charon"
alias v="vi"
alias atm="ssh -Y atm"
alias scp_atm="scp -i /Users/ryota/.ssh/charon_rsa"
alias scp_ofp="scp -i /Users/ryota/.ssh/ofp_private.ppk"


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Terminal Color Setting !!
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

source /Users/ryota/.git-prompt.sh
source /Users/ryota/.git-completion.bash
#source /usr/local/etc/bash_completion.d/git-prompt.sh
#source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

HOST='\u@\h'
PS1="\[\033]0;$HOST\007\]"     # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[36m\]'
    PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias lsF='ls -FG'
alias ll='ls -alFG'
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
