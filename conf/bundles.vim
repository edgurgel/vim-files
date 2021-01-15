call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-abolish'

Plug 'ap/vim-css-color'

Plug 'scrooloose/nerdcommenter'

Plug 'Raimondi/delimitMate'

Plug 'bling/vim-airline'

Plug 'benekastah/neomake'

Plug 'bkad/CamelCaseMotion'

Plug 'sickill/vim-pasta'

Plug 'mjbrownie/swapit'

Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'kassio/neoterm'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'kshenoy/vim-signature'

Plug 'ntpeters/vim-better-whitespace'

" LSP
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80', 'branch': 'release'}
Plug 'hyhugh/coc-erlang_ls', {'do': 'yarn install --frozen-lockfile'}
" Plug 'w0rp/ale'
" Plug 'autozimu/LanguageClient-neovim', {
    " \ 'branch': 'next',
    " \ 'do': 'bash install.sh',
    " \ }

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'

" Git related
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

" Ruby related
Plug 'jgdavey/vim-blockle', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'Spaceghost/vim-matchit' | Plug 'rking/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'Spaceghost/vim-matchit' | Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

" Erlang related
Plug 'vim-erlang/vim-erlang-runtime'

" Elixir related
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }

" Javascript related
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Themes
Plug 'tomasr/molokai'

" Docs
Plug 'rizzatti/dash.vim'

call plug#end()

