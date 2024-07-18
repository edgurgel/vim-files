-- Make Neovim scroll through the end of files
return {
  'plax-00/endscroll.nvim',
  event = "VeryLazy",
  config = function()
    vim.opt.scrolloff = 10
    require('endscroll').setup({})
  end
}
