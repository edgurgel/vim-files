let s:user_dir = stdpath('config')
let g:LanguageClient_serverCommands = {
\ 'elixir': [s:user_dir . '/plugged/vim-elixirls/elixir-ls/release/language_server.sh'],
\ }

let g:airline#extensions#languageclient#enabled = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
