source $HOME/.nvim/conf/init.vim
source $HOME/.nvim/conf/bundles.vim
source $HOME/.nvim/conf/defaults.vim
source $HOME/.nvim/conf/shortcuts.vim
source $HOME/.nvim/conf/autocmd.vim

" load local configurations if they exist
if filereadable(expand("$HOME/.nvimrc.local"))
  source $HOME/.nvimrc.local
endif
