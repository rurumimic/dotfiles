# alacritty

- github: [alacritty](https://github.com/alacritty/alacritty)

## Prerequisites

### Ubuntu

```bash
apt install cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
```

## Install alacritty

```bash
git clone https://github.com/alacritty/alacritty.git
cd alacritty
```

### Set Rust compiler

```bash
rustup override set stable
rustup update stable
```

### Build

```bash
cargo build --release
```

### Post Build

#### Terminfo

```bash
infocmp alacritty
```

```bash
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
```

#### Desktop Entry

```bash
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```

#### Shell completions

- rc.d
  - [alacritty.zsh](../rc.d/alacritty.zsh)

---

## Configuration

- [~/.config/alacritty/alacritty.toml](../home/private_dot_config/alacritty/alacritty.toml)

