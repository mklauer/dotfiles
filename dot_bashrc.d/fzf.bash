# Setup fzf
# ---------
if [[ ! "$PATH" == "$HOME"/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}"$HOME"/.fzf/bin"
  eval "$(fzf --bash)"
fi
