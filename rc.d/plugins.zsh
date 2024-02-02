### ZSH Plugins ###

if [ -d "$HOME/.zsh/zsh-history-substring-search" ]; then
     # ^U: abort the search.

     source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

     bindkey '^[[A' history-substring-search-up
     bindkey '^[[B' history-substring-search-down

     bindkey "$terminfo[kcuu1]" history-substring-search-up
     bindkey "$terminfo[kcud1]" history-substring-search-down

     bindkey -M emacs '^P' history-substring-search-up
     bindkey -M emacs '^N' history-substring-search-down

     bindkey -M vicmd 'k' history-substring-search-up
     bindkey -M vicmd 'j' history-substring-search-down
fi

if [ -d "$HOME/.zsh/zsh-syntax-highlighting" ]; then
     source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

