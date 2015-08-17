## Installation

```console
curl -fLo autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Add the environment variable `NVIM_TUI_ENABLE_TRUE_COLOR=1` to your .bash_profile

## Plugins

The most important plugins I use are:

* [unimpaired.vim] - many useful mappings for back and forth operations
* [surround.vim] - modify surrounding delimiters with a single keystroke
* [repeat.vim] - add repeat funcionality with `.` command for many of Tim Pope's
  plugins
  support
* [endwise.vim] - closes blocks like `if`, `for` automagically
* [abolish.vim] - abolish typos with a smart abbreviation schema and some other
  cool features
* [vim-css-color] - highlight colors written in css files
* [NerdCommenter] - easily comment and uncomment lines, blocks, etc.
* [ctrlp.vim] - fucking killer command to open files
* [ctrlp-modified.vim] - ctrlp.vim extension to open files modified since last commit
  and since branch creation
* [delimitMate] - auto close of `()`, `[]`, `{}`
* [vim-airline] - beatiful and useful status line
* [vim-textobj-user] - helps you define custom [text objects]
* [CamelCaseMotion] - move between camel case and snake case words
* [SwapIt] - adds nice feature of running `<C-A>` and `<C-X>` on words like `yes`,
  `no`, `true`, `false` and some others
* [fugitive.vim] - cool git wrapper
* [gist-vim] - creates, lists, reads, edits gists from within Vim
* [vim-ruby] - helps editing Ruby source code
* [vim-ruby-refactoring] - helps ruby code refactor
* [vim-textobj-rubyblock] - creates Vim text objects for ruby code(`ir`, `ar`). Also
  lets you use `%` to move between `do .. end`, `if .. end` and other paired ruby
  keywords

## Organization

This repository is organized in such a way to avoid what I call .vimrc hell. I created
it based on a [friend's vim files](https://github.com/jvortmann/vim-files).

### General settings

All editor settings are place in `conf` directory. General settings are placed in
`conf/autocmd.vim` and `conf/defaults.vim`. Shortcuts that are plugin independent
are placed in `conf/shortcuts.vim` file.

### Plugin settings

Each plugin has its entry in `conf/bundles.vim` file. This file is going to be
used by [vim-plug]. Plugins that need custom settings have a file with its name in
`plugin` directory. All shortcuts plugins, plugin variables will be placed there.
Vim automatically loads all these files when it is starting up.

## Shortcuts

TODO
