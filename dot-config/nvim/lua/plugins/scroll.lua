-- Make Neovim scroll through the end of files
return {
  'plax-00/endscroll.nvim',
  event = "VeryLazy",
  config = function()
    require('endscroll').setup({})
  end
}
