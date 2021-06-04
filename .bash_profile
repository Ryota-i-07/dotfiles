if [ -f ~/.bashrc ] ; then
 . ~/.bashrc
fi

# python 3
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"
