if has('nvim')
  let s:user_dir = stdpath('config')
else
  let s:user_dir = has('win32') ? expand('~/vimfiles') : expand('~/.vim')
endif

let g:ale_elixir_elixir_ls_release = s:user_dir . '/plugged/vim-elixirls/elixir-ls/release'

" https://github.com/JakeBecker/elixir-ls/issues/54
let g:ale_elixir_elixir_ls_config = { 'elixirLS': { 'dialyzerEnabled': v:false } }

let g:ale_linters = {}
let g:ale_linters.elixir = [ 'credo', 'elixir-ls' ]
let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1
set omnifunc=ale#completion#OmniFunc

autocmd FileType elixir,eelixir nnoremap gf :ALEGoToDefinition<CR>
autocmd FileType elixir,eelixir nnoremap <C-w>gf :ALEGoToDefinitionInTab<CR>
autocmd FileType elixir,eelixir nnoremap <C-\> :ALEFindReferences<CR>
