### Ruby ###

# jenv-style lazy init for fast startup (mirrors java.sh).
# rbenv's shims go on PATH eagerly so `ruby`, `gem`, `bundle` work right away.
# The slow part of `rbenv init -` (~37ms: a `rbenv rehash` fork + sourcing
# completions) is deferred to the first `rbenv` invocation.
if [ -s "$HOME/.rbenv/bin/rbenv" ]; then
    export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
    export RBENV_SHELL=zsh

    rbenv() {
        unset -f rbenv
        eval "$(command rbenv init - zsh)"
        rbenv "$@"
    }
fi
