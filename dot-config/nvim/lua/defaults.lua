-- 50:" Highlighting lines longer than 120 columns
-- 51:set colorcolumn=120
vim.cmd [[
  syntax enable
]]

local set = vim.opt

set.clipboard = "unnamed,unnamedplus"

if vim.fn.has('gui_running') == 1 then
  set.guioptions = 'c'
end

vim.cmd [[
  colorscheme desert
]]

set.number = true
set.cursorline = true
set.termguicolors = true

-- autocompletion with a menu
set.wildmenu = true
set.wildmode = "list:longest,full"

-- Search options
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.hlsearch = true

-- Tab behaviour
-- set tabstop=2 shiftwidth=2 softtabstop=2 backspace=indent,eol,start expandtab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.backspace = [[indent,eol,start]]
set.expandtab = true

-- Automatically reload files if they were modified outside VIM
set.autoread = true

-- No backups
set.backup = false
set.swapfile = false

-- Display extra whitespace
set.list = true
set.listchars = { tab = '▸ ', trail = '·' }

-- Enable mouse interaction
set.mouse = 'a'

-- Split the right way
set.splitbelow = true
set.splitright = true

-- Incremental substitution
set.inccommand = 'nosplit'

-- Add http filetype
vim.filetype.add({
  extension = {
    ['http'] = 'http',
  },
})
-- inline diagnostics
vim.diagnostic.config({
  -- Use the default configuration
  virtual_lines = true

  -- Alternatively, customize specific options
  -- virtual_lines = {
  --  -- Only show virtual line diagnostics for the current cursor line
  --  current_line = true,
  -- },
})
