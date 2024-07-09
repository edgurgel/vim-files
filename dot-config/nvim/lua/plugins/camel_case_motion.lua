return {
  {
    'bkad/CamelCaseMotion',
    event = "VeryLazy",
    config = function()
      vim.keymap.set('', '<S-W>', '<Plug>CamelCaseMotion_w', { noremap = false })
      vim.keymap.set('', '<S-B>', '<Plug>CamelCaseMotion_b', { noremap = false })
      vim.keymap.set('', '<S-E>', '<Plug>CamelCaseMotion_e', { noremap = false })
    end,
  }
}
