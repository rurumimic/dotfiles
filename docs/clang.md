# Clang/LLVM

C language family frontend for llvm.

## Install Clang/LLVM

### Ubuntu

- [apt.llvm.org](https://apt.llvm.org/)

```bash
sudo /usr/bin/bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" -- {{ $version }} all
```

#### Set symbolic links

```bash
Usage: update-alternatives [<option> ...] <command>

Options:
  --display <name>        display information about the <name> group.
  --list <name>           display all targets of the <name> group.
  --get-selections        list master alternative names and their status.
  --remove-all <name>     remove <name> group from the alternatives system.
  --verbose               verbose operation, more output.
  --debug                 debug ouput, more output.
```

##### llvm-config

```bash
sudo update-alternatives \
  --install /usr/bin/llvm-config    llvm-config    /usr/bin/llvm-config-{{ $version }} {{ $priority }} \
  --slave   /usr/bin/llvm-...       llvm-...       /usr/bin/llvm...-{{ $version }}                     \
# ...
```

output:

```bash
update-alternatives: setting up automatic selection of llvm-config
update-alternatives: using /usr/bin/llvm-config-17 to provide /usr/bin/llvm-config (llvm-config) in auto mode
```

##### clang

```bash
sudo update-alternatives \
  --install /usr/bin/clang          clang          /usr/bin/clang-{{ $version }} {{ $priority }} \
  --slave   /usr/bin/clang-...      clang-...      /usr/bin/clang...-{{ $version }}              \
# ...
```

output:

```bash
update-alternatives: setting up automatic selection of clang
update-alternatives: using /usr/bin/clang-17 to provide /usr/bin/clang (clang) in auto mode
```

## Setup env

- `home/dot_zshrc.tmpl`
- `files/sh/export.sh` 
  - `CC`: `clang`
  - `CXX`: `clang++`

