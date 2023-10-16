# ZSH

- zsh
  - [docs](https://zsh.sourceforge.io/Doc/Release/index.html)

## Source

- rc.d
  - [zsh.sh](../rc.d/zsh.sh)
- home
  - [dot_zshrc.tmpl](../home/dot_zshrc.tmpl)
  - .chezmoiscripts/linux
    - [run_once_after_02-zsh.sh.tmpl](../home/.chezmoiscripts/linux/run_once_after_02-zsh.sh.tmpl)

## Init

```bash
autoload -Uz zsh-newuser-install
zsh-newuser-install -f
```

## Oh My Zsh

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

