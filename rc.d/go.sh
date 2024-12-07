### Go ###

if [ -d "/usr/local/go/bin" ]; then
    export GOPATH="$HOME/.go"
    export PATH="$PATH:/usr/local/go/bin"
    export PATH="$PATH:$(go env GOPATH)/bin"
fi

