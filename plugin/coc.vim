" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd FileType elixir,eelixir nnoremap gf <Plug>(coc-definition)
autocmd FileType elixir,eelixir nnoremap gr <Plug>(coc-references)
autocmd FileType ruby nnoremap gf <Plug>(coc-definition)
autocmd FileType ruby nnoremap gr <Plug>(coc-references)
