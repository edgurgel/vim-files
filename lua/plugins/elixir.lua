return {
  {
    'elixir-lang/vim-elixir',
    lazy = true,
    ft = 'elixir'
  },
  {
    'mhinz/vim-mix-format',
    lazy = true,
    ft = 'elixir',
    config = function()
      vim.g['mix_format_on_save'] = 0
      vim.g['mix_format_options'] = '--check-equivalent'

      vim.keymap.set('x', '<leader>f', ':Format<CR>', { noremap = false })
      vim.keymap.set('n', '<leader>f', ':Format<CR>', { noremap = false })
    end
  },
}
