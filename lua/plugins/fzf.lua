return {
  'junegunn/fzf.vim',
  dependencies = {
    'junegunn/fzf'
  },
  config = function()
    vim.g.fzf_vim = {}
    vim.g.fzf_vim.buffers_jump = 1
    -- vim.g.fzf_layout =
    -- "{'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }"
    -- vim.env.FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
    -- vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden'
  end
}
