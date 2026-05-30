# Setup fzf
# ---------
[[ -d "$HOME/.fzf/bin" ]] && export PATH="$HOME/.fzf/bin:$PATH"
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --bash)"
fi
