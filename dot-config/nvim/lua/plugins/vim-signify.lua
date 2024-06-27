return {
  {
    'mhinz/vim-signify',
    lazy = false,
    config = function()
      vim.g['signify_mapping_next_hunk'] = ']h'
      vim.g['signify_mapping_prev_hunk'] = '[h'
      vim.g['signify_sign_change']       = '~'
      vim.g['signify_mapping_toggle']    = '<leader>vs'
      vim.g['signify_cursorhold_normal'] = 0
      vim.g['signify_cursorhold_insert'] = 0
    end,
  }
}
