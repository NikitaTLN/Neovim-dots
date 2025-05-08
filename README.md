<h1 align="center">NVW1dget</h1>

<p align="center">
A minimalistic nvim config aimed at C# and Unity developers on MacOS. It is a lightweight replacement for Rider and VSCode, eliminating all unnecessary featuresd to be easily portable for running on servers and for deployment on Linux systems.
</p>

<p align="center">
Credits to ZedProger for the base config
</p>

## ✨ Features
- Fast startup in just 140ms
- Support over 30 color schemes
- Support for diagnostics and LSP by default
- Quick search via Telescope

## 🌟 Installation
- If you already have neovim, make backups of your configuration.
- Remove the current nvim configuration and cache if it exists:

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

- Execute the commands to install:

```sh
brew install git npm
```

```sh
mkdir -p ~/.config/nvim
git clone https://github.com/NikitaTLN/NVW1dget.git ~/.config/nvim
nvim -c "MasonInstall pyright ruff omnisharp omnisharp-mono lua-language-server csharp-language-server"
```
