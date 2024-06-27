-- nnoremap <Leader>w :write<CR>
-- vim.keymap.set('n', '<Leader>w', ':write<CR>')

-- keep pasted content in buffer
vim.keymap.set('x', 'p', 'pgvy')
vim.keymap.set('v', '<Leader>p', '"_dP')

-- if a line wraps, 'j' and 'k' move through each visual line
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- window movement
vim.keymap.set('', '<C-j>', '<C-W>j', { remap = true, desc = 'Move to the window on the bottom' })
vim.keymap.set('', '<C-k>', '<C-W>k', { remap = true, desc = 'Move to the window on the top' })
vim.keymap.set('', '<C-h>', '<C-W>h', { remap = true, desc = 'Move to the window on the right' })
vim.keymap.set('', '<C-l>', '<C-W>l', { remap = true, desc = 'Move to the window on the left' })

-- window split change
vim.keymap.set('n', '<leader>h', '<C-W>t <C-W>K', { remap = true })
vim.keymap.set('n', '<leader>h', '<C-W>t <C-W>K', { remap = true })

-- tab openning and closing
vim.keymap.set('', '<leader>tc', ':tabclose<CR>', { remap = true, desc = 'Close tab' })
vim.keymap.set('', '<leader>tn', ':tabnew<CR>', { remap = true, desc = 'Open tab' })
vim.keymap.set('', '<leader>to', ':tabonly<CR>', { remap = true, desc = 'Close other tabs' })

-- tab navigation
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { remap = false })
vim.keymap.set('n', '<TAB>', 'gt', { remap = false })
vim.keymap.set('n', '<S-TAB>', 'gT', { remap = false })
-- vim.keymap.set('t', '<TAB>', 'gt', { remap = false })
-- vim.keymap.set('t', '<S-TAB>', 'gT', { remap = false })

-- W also saves
vim.api.nvim_create_user_command('W', 'w', {})

-- Q also quits
vim.api.nvim_create_user_command('Q', 'q', {})

-- Move lines up and down
-- originally K(help) and Q(ex mode), now they are more useful
-- vnoremap Q :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', { remap = false })
vim.keymap.set('v', 'Q', ':m \'>+1<CR>gv=gv', { remap = false })

-- Enter toggles a line comment
-- vim.keymap.set('n', '<CR>', ':call nerdcommenter#Comment("n", "toggle")<CR>', { remap = false })
-- vim.keymap.set('v', '<CR>', ':call nerdcommenter#Comment("v", "toggle")<CR>', { remap = false })
local line_rhs = function()
  return require('vim._comment').operator() .. '_'
end
vim.keymap.set({ 'n', 'v' }, '<CR>', line_rhs, { expr = true, desc = 'Toggle comment' })

-- Fold by pressing space
-- nnoremap <SPACE> za
-- nnoremap <leader><SPACE> zA
vim.keymap.set('n', '<SPACE>', 'za', { remap = false })
vim.keymap.set('n', '<leader><SPACE>', 'zA', { remap = false })

-- source current file
vim.keymap.set('n', '<leader>so', ':source %<CR>', { remap = false })

-- no idea
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', { remap = true })
vim.keymap.set('i', '<C-Q>', '<C-Space>', { remap = true })
