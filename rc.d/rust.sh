### Rust ###

if [ -s "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

if command -v sccache >/dev/null 2>&1; then
  export RUSTC_WRAPPER=sccache
fi

