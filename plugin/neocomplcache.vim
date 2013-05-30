let g:neocomplcache_enable_at_startup = 0
let g:neocomplcache_enable_smart_case = 1

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \ : pumvisible() ? "\<C-n>" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
