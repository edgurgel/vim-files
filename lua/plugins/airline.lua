return {
  {
    'bling/vim-airline',
    lazy = false,
    config = function()
      vim.opt.laststatus = 2
      vim.opt.showmode = false
      vim.g['airline#extensions#enabled'] = 1
      vim.g['airline#extensions#tabline#enabled'] = 1
    end,
  }
}
