<h1 align="center">NVW1dget</h1>

<p align="center">
A minimalistic nvim config aimed at C# and Unity developers on MacOS. It is a lightweight replacement for Rider and VSCode, eliminating all unnecessary featuresd to be easily portable for running on servers and for deployment on Linux systems.
</p>

<p align="center">
Credits to ZedProger for the base config
</p>

## 🌟 What it is?
- There are many forks of nvim, but what does this one do? The main purpose of this config is to create a minimal environment for Python development, so that it is not resource-hungry and can be deployed quickly on Linux systems.
- It can be difficult for beginners to install all the necessary plugins and LSP servers to get started. Here you don't need to do anything, just run a few commands to install and immediately use auto-tips, Ruff formatting, Mypy fixes and all the other tricks without setting up configurations.

## ✨ Features
- Fast startup in just 140ms
- Catalog trees, support for TODO tags, navigation plugins, Git
- Support over 30 color schemes
- Support for diagnostics and LSP by default
- Built-in floating terminal that can be opened separately
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
