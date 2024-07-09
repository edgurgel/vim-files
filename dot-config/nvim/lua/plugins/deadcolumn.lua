return {
  'Bekaboo/deadcolumn.nvim',
  version = '*',
  event = "VeryLazy",
  config = function()
    require('deadcolumn').setup({
      modes = { 'n', 'i' },
      scope = 'visible'
    })
  end
}
