return {
  'Bekaboo/deadcolumn.nvim',
  version = '*',
  config = function()
    require('deadcolumn').setup({
      modes = { 'n', 'i' },
      scope = 'visible'
    })
  end
}
