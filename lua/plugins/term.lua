return {
  'akinsho/toggleterm.nvim',
  version = "2.*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      start_in_insert = true,
      insert_mappings = true,   -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      direction = 'float',
      shell = 'bash --login',
    })
  end
}
