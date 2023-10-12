### EXPORT ###

export PATH="$HOME/.local/bin:$PATH"

export EDITOR='vi'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

if command -v clang > /dev/null; then
  export CC=clang
fi
if command -v clang++ > /dev/null; then
  export CXX=clang++
fi

