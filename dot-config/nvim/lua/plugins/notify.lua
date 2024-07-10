return {
  'rcarriga/nvim-notify',
  opts = {
    timeout = 3000,
    render = "compact",
    stages = "fade",
    top_down = false,
  },
  config = function(_, opts)
    vim.notify = require("notify")
    require('notify').setup(opts)
  end
}
