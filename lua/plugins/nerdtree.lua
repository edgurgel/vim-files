return {
  {
    'scrooloose/nerdtree',
    lazy = false,
    config = function()
      -- nnoremap <silent> <leader>n :NERDTreeToggle<CR>
      vim.keymap.set('n', '<silent> <leader>n', ':NerdTreeToggle<CR>', { noremap = true })
    end,
  }
}
