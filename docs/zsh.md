# ZSH

- zsh
  - [docs](https://zsh.sourceforge.io/Doc/Release/index.html)

## Source

- rc.d
  - [prompt.zsh](../rc.d/prompt.zsh)
  - [plugins.zsh](../rc.d/plugins.zsh)
- home
  - [dot_zshrc.tmpl](../home/dot_zshrc.tmpl)
  - [dot_zshenv](../home/dot_zshenv)
  - [dot_zprofile](../home/dot_zprofile)
  - .chezmoiscripts/linux
    - [run_once_after_A2-zsh.sh.tmpl](../home/.chezmoiscripts/linux/run_once_after_A2-zsh.sh.tmpl)

## Init

```bash
autoload -Uz zsh-newuser-install
zsh-newuser-install -f
```

## Typewirtten

- [typewritten](https://typewritten.dev/)

```bash
~/.zshenv
~/.zprofile
```

## Plugins

- zsh-users
  - [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Oh My Zsh

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

