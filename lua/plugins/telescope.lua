return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.git_files, { noremap = true })
      vim.keymap.set('n', '<leader>rg', builtin.live_grep, { noremap = true })
    end
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
}
