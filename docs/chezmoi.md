# chezmoi

- [chezmoi.io](https://www.chezmoi.io/)
- github: [twpayne/chezmoi](https://github.com/twpayne/chezmoi)

## Getting Started

### One-line binary install

Install Chezmoi in `~/.local/bin`:

```bash
sh -c "$(wget -qO- get.chezmoi.io/lb)"
sh -c "$(curl -fsSL get.chezmoi.io/lb)"

info found version 2.40.0 for latest/linux/amd64
info installed ~/.local/bin/chezmoi
```

### Init Chezmoi

```bash
chezmoi init --apply --refresh-externals rurumimic
```

## Source

- [.chezmoiroot](../.chezmoiroot)

### Root Directory

- home
  - [.chezmoi.toml.tmpl](../home/.chezmoi.toml.tmpl)

### Configurations

```bash
-rw------- ~/.config/chezmoi/chezmoi.toml
```

```toml
[data]
osid = "linux-ubuntu"
name = ""
email = ""
```
