return {
  {
    'scrooloose/nerdcommenter',
    lazy = false,
    config = function()
      vim.keymap.set('n', '<CR>', ':call nerdcommenter#Comment("n", "toggle")<CR>', { remap = false })
      vim.keymap.set('v', '<CR>', ':call nerdcommenter#Comment("v", "toggle")<CR>', { remap = false })
    end,
  }
}
