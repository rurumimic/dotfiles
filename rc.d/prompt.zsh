### Prompt ###

# typewritten
export TYPEWRITTEN_SYMBOL="λ"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"
export TYPEWRITTEN_RELATIVE_PATH="home"
# export TYPEWRITTEN_RELATIVE_PATH="adaptive"
export TYPEWRITTEN_SHOW_ABSOLUTE_PATH="true"

if [ -d "$HOME/.zsh/typewritten" ]; then
    fpath+=$HOME/.zsh/typewritten
    autoload -U promptinit; promptinit
    prompt typewritten
fi

# Add absolute path line above the prompt
if (( $+functions[tw_redraw] )) && [[ "$TYPEWRITTEN_SHOW_ABSOLUTE_PATH" = "true" ]]; then
  functions[_tw_redraw_orig]=$functions[tw_redraw]
  tw_redraw() {
    _tw_redraw_orig "$@"
    local tw_abs="%F{244}%/%f"
    if [[ "$TYPEWRITTEN_PROMPT_LAYOUT" = singleline* ]]; then
      PROMPT="$BREAK_LINE$tw_abs$BREAK_LINE$PROMPT"
    else
      PROMPT="$BREAK_LINE$tw_abs$PROMPT"
    fi
    zle -R && zle reset-prompt
  }
fi


