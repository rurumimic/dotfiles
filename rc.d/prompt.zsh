### Prompt ###

if [ -d "$HOME/.zsh/typewritten" ]; then
    fpath+=$HOME/.zsh/typewritten
    autoload -U promptinit; promptinit
    prompt typewritten
fi

