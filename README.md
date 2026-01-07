My NVF's configuration for neovim.

Try without installing:
```bash
nix run github:whitebirb/neovim.nix
```


## Installation

This flake is meant to be used as a replacement for neovim package.
If you have flakes enabled on your Nix(OS), simply add this flake to your profile:

### With cloning the repository

```bash
nix profile add .
```

### Without cloning the repository

```bash
nix profile add github:whitebirb/neovim.nix
```
