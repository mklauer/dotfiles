if command -v oh-my-posh &>/dev/null; then
  local_config="$WIN_HOME/.config/oh-my-posh/themes/quick-term.omp.json"
  if [ -f "local_config" ]; then
    config=$local_config
  else
    config="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/quick-term.omp.json"
  fi
  eval "$(oh-my-posh init bash --config "$config")"
fi
