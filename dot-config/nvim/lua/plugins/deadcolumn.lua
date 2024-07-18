return {
  'Bekaboo/deadcolumn.nvim',
  version = '*',
  event = "VeryLazy",
  config = function()
    vim.opt.colorcolumn = '120'

    require('deadcolumn').setup({
      modes = { 'n', 'i' },
      scope = 'visible'
    })
  end
}
