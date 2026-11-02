
if command -v eza &>/dev/null; then
    alias ls=eza
    alias ll='eza -al --classify=always'
fi
