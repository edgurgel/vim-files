lua require('init')
lua require('defaults')
lua require('shortcuts')
lua require('autocmd')

lua require('lazyinit')

" load local configurations if they exist
if filereadable(expand("$HOME/.nvimrc.local"))
  source $HOME/.nvimrc.local
endif
