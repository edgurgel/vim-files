return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    keys = {
      -- not sure about this mode option
      { '<leader>n', ':NvimTreeToggle<CR>', mode = "n", noremap = true, desc = 'File tree' }
    },
    config = function()
      require("nvim-tree").setup()
    end,
  }
}
