if command -v oh-my-posh &>/dev/null; then
  local_config="$WIN_HOME/.config/oh-my-posh/myTheme.yml"
  if [ -f "local_config" ]; then
    config=$local_config
  else
    config="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/night-owl.omp.json"
  fi
  eval "$(oh-my-posh init bash --config "$config")"
fi
