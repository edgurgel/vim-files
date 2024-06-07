return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    config = function()
      local builtin = require('telescope.builtin')
      require("telescope").load_extension("live_grep_args")

      vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true })
      vim.keymap.set('n', '<leader>rg', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
      vim.keymap.set('n', '<leader>git', builtin.git_status, { noremap = true })
    end
  },
}
