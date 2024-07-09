return {
  'echasnovski/mini.jump',
  version = '*',
  event = "BufEnter",
  config = function()
    require('mini.jump').setup()
  end
}
