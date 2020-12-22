let g:mix_format_on_save = 0
let g:mix_format_options = '--check-equivalent'

command! -nargs=0 Format :call CocAction('format')

xmap <leader>f :Format<cr>
nmap <leader>f :Format<cr>
