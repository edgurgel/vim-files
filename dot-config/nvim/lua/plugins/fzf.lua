return {
  'junegunn/fzf.vim',
  dependencies = {
    'junegunn/fzf'
  },
  config = function()
    vim.g.fzf_vim = {}

    vim.g.fzf_vim.buffers_jump = 1
    -- vim.g.fzf_vim.preview_window = { 'right,50%', 'ctrl-/' }
    vim.cmd([[
    " [Buffers] Jump to the existing window if possible
    "let g:fzf_buffers_jump = 1
    let g:fzf_vim = {}
    let g:fzf_vim.buffers_jump = 1
    let g:fzf_vim.preview_window = ['right,50%', 'ctrl-/']

    nnoremap <C-p> :GFiles --cached --others --exclude-standard<cr>

    tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
    command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --colors "path:fg:190,220,255" --colors "line:fg:128,128,128" --smart-case '.shellescape(<q-args>), 1, { 'options': '--color hl:123,hl+:222' }, 0)

    " Border color
    "let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.9, 'height': 0.9,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
    " let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
    " let $FZF_DEFAULT_COMMAND="rg --files --hidden"

    au TermOpen * tnoremap <Esc> <c-\><c-n>
    au FileType fzf tunmap <Esc>
    ]])
  end
}
