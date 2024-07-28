## Installation

Install `bat`, `delta`, `vivid`, `startship`

Install GNU `stow`` and run:

`stow -v --dotfiles -t ~/ .`

Add to your `.bashrc`:

```
export RIPGREP_CONFIG_PATH=~/.ripgreprc`
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# Catppuccin-macchiato for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"
```


Run `bat cache --build`

### Plugin settings

Each plugin has its entry in `conf/bundles.vim` file. This file is going to be
used by lazy. Plugins that need custom settings have a file with its name in
`lua/plugins` directory. All shortcuts plugins, plugin variables will be placed there.
Vim automatically loads all these files when it is starting up.
