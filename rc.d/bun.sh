### Bun ###

# bun
if [ -d "$HOME/.bun" ]; then
  export PATH="$PATH:$HOME/.bun/bin"

  # Lazy completions: sourcing ~/.bun/_bun on every startup costs ~30ms, but it
  # is only the `bun` tab-completion. Put it on fpath and autoload it on first
  # `bun` TAB instead. (compdef is available because compinit ran in .zshrc.)
  fpath+=("$HOME/.bun")
  autoload -Uz _bun && compdef _bun bun
fi
