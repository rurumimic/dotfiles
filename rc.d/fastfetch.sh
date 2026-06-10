### Fastfetch ###

if command -v fastfetch > /dev/null; then
  if [ -f "$HOME/.config/fastfetch/batman.ascii" ]; then
    fastfetch -l ~/.config/fastfetch/batman.ascii --logo-color-1 white
  else
    fastfetch
  fi
fi

