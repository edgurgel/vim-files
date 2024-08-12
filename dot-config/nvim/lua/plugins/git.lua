return {
  { 'tpope/vim-fugitive', event = "VeryLazy" },
  {
    'ruifm/gitlinker.nvim',
    keys = {
      { '<leader>gy', '<cmd>lua require"gitlinker".get_buf_range_url("n")<cr>',                                                                 mode = { 'n' }, desc = 'Copy Git webpage' },
      { '<leader>gy', '<cmd>lua require"gitlinker".get_buf_range_url("v")<cr>',                                                                 mode = { 'v' }, desc = 'Copy Git webpage' },
      { '<leader>gb', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', mode = { 'n' }, desc = 'Open Git webpage' },
      { '<leader>gb', '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', mode = { 'v' }, desc = 'Open Git webpage' }
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require "gitlinker".setup({ mappings = nil })
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    version = '*',
    event = "BufEnter",
    config = function()
      require('gitsigns').setup({
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then
              vim.cmd.normal({ ']c', bang = true })
            else
              gitsigns.nav_hunk('next')
            end
          end)

          map('n', '[c', function()
            if vim.wo.diff then
              vim.cmd.normal({ '[c', bang = true })
            else
              gitsigns.nav_hunk('prev')
            end
          end)

          -- Actions
          map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage hunk' })
          map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset hunk' })
          map('v', '<leader>hs', function() gitsigns.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end,
            { desc = 'Stage hunk' })
          map('v', '<leader>hr', function() gitsigns.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end,
            { desc = 'Reset hunk' })
          map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk' })

          -- Text object
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      })
    end,
  } }
