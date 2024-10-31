# pip bash completion start
_pip_completion() {
  COMPREPLY=($(COMP_WORDS="${COMP_WORDS[*]}" \
    COMP_CWORD=$COMP_CWORD \
    PIP_AUTO_COMPLETE=1 $1 2>/dev/null))
}
complete -o default -F _pip_completion pip
# pip bash completion end

## pipenv
if command -v pipenv &>/dev/null; then
  # create virtual environments in project folder
  export PIPENV_VENV_IN_PROJECT=1
  # enable tab completion
  eval "$(_PIPENV_COMPLETE=bash_source pipenv)"
fi

## pyenv
if command -v pyenv &>/dev/null; then
  #
  export PYENV_ROOT="$HOME/.pyenv"
  [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
