return {
  'kevinhwang91/nvim-ufo',
  version = "*",
  event = "BufEnter",
  dependencies = { 'kevinhwang91/promise-async' },
  keys = {
    { '<SPACE>',         'za', desc = 'Toggle fold',         remap = false },
    { '<SPACE>',         'zf', desc = 'Fold',                remap = false, mode = 'v' },
    { '<leader><SPACE>', 'zA', desc = 'Toggle fold on file', remap = false },
  },
  config = function()
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99   -- Using Ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldmethod = 'expr'
    vim.o.foldenable = false
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    -- vim.o.foldenable = true

    -- Using Ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

    -- Option 3: treesitter as a main provider instead
    -- (Note: the `nvim-treesitter` plugin is *not* needed.)
    -- ufo uses the same query files for folding (queries/<lang>/folds.scm)
    -- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
    require('ufo').setup({
      provider_selector = function(_bufnr, _filetype, _buftype)
        return { 'treesitter', 'indent' }
      end
    })
  end
}
