return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        extensions = { 'quickfix', 'fugitive', 'toggleterm', 'lazy', 'mason', 'nvim-tree', 'trouble' },
        options = {
          theme = "catppuccin"
        }
      }
    end
  }
}
