" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <leader>s :call CocAction('codeLensAction')<CR>

autocmd FileType rust,elixir,eelixir nnoremap gf <Plug>(coc-definition)
autocmd FileType rust,elixir,eelixir nnoremap gr <Plug>(coc-references)
" autocmd FileType ruby nnoremap gf <Plug>(coc-definition)
" autocmd FileType ruby nnoremap gr <Plug>(coc-references)
" xmap <leader>f <Plug>(coc-format)
" nmap <leader>f <Plug>(coc-format)
autocmd FileType rust,elixir,eelixir map <silent> gd <Plug>(coc-definition)
autocmd FileType rust,elixir,eelixir map <silent> gr <Plug>(coc-references)
