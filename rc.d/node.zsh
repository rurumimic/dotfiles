### Node ###

# Add SSL Certs
# export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt

# nvm
# if [ -d "$HOME/.nvm" ]; then
#     export NVM_DIR="$HOME/.nvm"
#     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fi

# fnm

if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd --shell zsh)"
else
  FNM_PATH="$HOME/.local/share/fnm"
  if [ -d "$FNM_PATH" ]; then
    export PATH="$FNM_PATH:$PATH"
    eval "$(fnm env --use-on-cd --shell zsh)"
  fi
fi

