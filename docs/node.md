# Node

## Source

- rc.d
  - [node.sh](../rc.d/node.sh)
- home/.chezmoiscripts/linux
  - [run_once_after_B1-node.sh.tmpl](../home/.chezmoiscripts/linux/run_once_after_B1-node.sh.tmpl)

## Env

```bash
# Add SSL Certs
export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
```

## NPM

### Upgrade

```bash
nvm install-latest-npm
```

## Corepack

```bash
corepack enable
corepack enable pnpm
```

