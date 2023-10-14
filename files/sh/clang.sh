### Clang ###

if command -v clang > /dev/null; then
  export CC=clang
fi

if command -v clang++ > /dev/null; then
  export CXX=clang++
fi
