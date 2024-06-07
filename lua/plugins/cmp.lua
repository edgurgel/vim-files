return {
  "hrsh7th/nvim-cmp",
  name = "nvim-cmp",
  dependencies = {
    -- install different completion source
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "zbirenbaum/copilot-cmp",
    "onsails/lspkind.nvim"
  },
  config = function()
    require("copilot_cmp").setup()
    local cmp = require("cmp")
    cmp.setup({
      -- add different completion source
      sources = cmp.config.sources({
        -- Copilot Source
        { name = "nvim_lsp", group_index = 1 },
        { name = "buffer", group_index = 1 },
        { name = "copilot", group_index = 2 },
        { name = "path", group_index = 3 },
      }),
      -- using default mapping preset
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        -- you must specify a snippet engine
        expand = function(args)
          -- using neovim v0.10 native snippet feature
          -- you can also use other snippet engines
          vim.snippet.expand(args.body)
        end,
      },
      formatting = {
        format = require('lspkind').cmp_format(),
      },
    })
  end,
}
