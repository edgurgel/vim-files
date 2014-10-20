let g:syntastic_mode_map = { 'mode': 'passive',
      \ 'active_filetypes': ['ruby', 'puppet', 'yaml', 'erlang', 'elixir', 'json', 'tex', 'html', 'javascript'],
      \ 'passive_filetypes': [] }
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
