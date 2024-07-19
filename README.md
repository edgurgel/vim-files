## Installation

Install `bat`, `delta`, `vivid`, `startship`

Install GNU `stow`` and run:

`stow -v --dotfiles -t ~/ .`

Add to your `.bashrc`:

```
export RIPGREP_CONFIG_PATH=~/.ripgreprc`
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
```


Run `bat cache --build`

### Plugin settings

Each plugin has its entry in `conf/bundles.vim` file. This file is going to be
used by lazy. Plugins that need custom settings have a file with its name in
`lua/plugins` directory. All shortcuts plugins, plugin variables will be placed there.
Vim automatically loads all these files when it is starting up.
