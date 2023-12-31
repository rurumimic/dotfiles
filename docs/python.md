# Python

- [pyenv](https://github.com/pyenv/pyenv)
  - wiki: [Suggested build environment](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)
- [autoenv](https://github.com/hyperupcall/autoenv)

## Source

- rc.d
  - [python.sh](../rc.d/python.sh)
- home/.chezmoiscripts/linux
  - [run_once_after_A4-python.sh.tmpl](../home/.chezmoiscripts/linux/run_once_after_A4-python.sh.tmpl)

## Build Tools

### Ubuntu

```bash
build-essential
libssl-dev
zlib1g-dev
libbz2-dev
libreadline-dev
libsqlite3-dev
curl
libncursesw5-dev
xz-utils
tk-dev
libxml2-dev
libxmlsec1-dev
libffi-dev
liblzma-dev
```

## Pyenv

- pyenv
- plugins
  - pyenv-doctor
  - pyenv-update
  - pyenv-virtualenv

### Latest Version

```bash
pyenv latest --known '3.11'

3.11.6
```

#### get the latest version from scratch

1. List all available versions
1. Delete all horizontal whitespace
1. List `3.y.z` versions
1. Natural sort of (version) numbers within text
1. Select latest version

```bash
pyenv install --list | \
tr --delete '[:blank:]' | \
grep --extended-regexp '^{{ $version }}.[0-9]+' | \
sort --version-sort | \
tail --lines 1
```

