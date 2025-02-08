# dotfiles

just setup:

```bash
sh -c "$(wget -qO- get.chezmoi.io)" -- -b $HOME/.local/bin init -R rurumimic
sh -c "$(curl -fsSL get.chezmoi.io)" -- -b $HOME/.local/bin init -R rurumimic
```

setup and run:

```bash
sh -c "$(wget -qO- get.chezmoi.io)" -- -b $HOME/.local/bin init --apply -R rurumimic
sh -c "$(curl -fsSL get.chezmoi.io)" -- -b $HOME/.local/bin init --apply -R rurumimic
```

## Docs

### A

- [chezmoi](docs/chezmoi.md): dotfiles manager
- [tools](docs/tools.md): development tools
- [packages](docs/packages.md): awesome tools
- [zsh](docs/zsh.md): prompt, plugins
- [clang/llvm](docs/clang.md)
- [python](docs/python.md): with version manager

### B

- [node](docs/node.md): with version manager
- [java](docs/java.md): with version manager, project manager
- [go](docs/go.md)
- [rust](docs/rust.md)
- [ruby](docs/ruby.md): with version manager
- [haskell](docs/haskell.md)

### C

- [vim](docs/vim.md)
- [nvim](docs/nvim.md)

### Other

- [vagrant](docs/vagrant.sh)

## External Repos

docs: [external](docs/external.md)

- [rurumimic/.vim](https://github.com/rurumimic/.vim)
- [rurumimic/nvim](https://github.com/rurumimic/nvim)

## Refs

- [dotfiles.github.io](https://dotfiles.github.io/)
- [chezmoi.io](https://www.chezmoi.io/)

