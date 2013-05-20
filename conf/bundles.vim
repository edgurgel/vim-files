NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-abolish'

NeoBundle 'ap/vim-css-color'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'jasoncodes/ctrlp-modified.vim'

NeoBundle 'majutsushi/tagbar'

NeoBundle "honza/vim-snippets"

NeoBundle 'Raimondi/delimitMate'

NeoBundle 'Lokaltog/vim-powerline'

NeoBundle 'rosstimson/scala-vim-support'

NeoBundle 'sjl/gundo.vim'

NeoBundle 'scrooloose/syntastic'

NeoBundle 'bkad/CamelCaseMotion'

NeoBundle 'szw/vim-tags'

NeoBundle 'othree/xml.vim'

NeoBundle 'nelstrom/vim-visual-star-search'

NeoBundle 'iurifq/vim-travis-ci', {'depends' : [
      \ 'mattn/webapi-vim',
      \ 'tpope/vim-fugitive'
      \ ]}

NeoBundle 'mjbrownie/swapit'

NeoBundle 'suan/vim-instant-markdown'

NeoBundle 'Shougo/vimshell.vim', { 'depends' : [[
      \ 'Shougo/vimproc', {
      \   'build' : {
      \       'windows' : 'make -f make_mingw32.mak',
      \       'cygwin' : 'make -f make_cygwin.mak',
      \       'mac' : 'make -f make_mac.mak',
      \       'unix' : 'make -f make_unix.mak',
      \      }
      \   }]]}

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'

" Git related
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'gilligan/textobj-gitgutter'
NeoBundle 'mattn/gist-vim', { 'depends' : 'mattn/webapi-vim' }

" Ruby related
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rking/vim-ruby-refactoring', { 'depends' : 'Spaceghost/vim-matchit'}
NeoBundle 'tpope/vim-rails'
NeoBundle 'nelstrom/vim-textobj-rubyblock', { 'depends' : [
      \ 'kana/vim-textobj-user',
      \ 'Spaceghost/vim-matchit'
      \ ]}

" Erlang related
NeoBundle 'jimenezrick/vimerl'

" Themes
NeoBundle 'tomasr/molokai'

" Slim
NeoBundle 'slim-template/vim-slim'

" Coffeescript
NeoBundle 'kchmck/vim-coffee-script'

NeoBundleCheck
