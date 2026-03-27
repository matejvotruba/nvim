-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostic [Q]uickfix float' })
vim.keymap.del('n', '<C-W>d')
vim.keymap.del('n', '<C-W><C-D>')

-- Copy to system clipboard, paste from system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Copy to system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { noremap = true, silent = true, desc = 'Copy to system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p', { noremap = true, silent = true, desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"+P', { noremap = true, silent = true, desc = 'Paste from system clipboard' })
-- Paste preserves primal yanked piece
vim.keymap.set('v', 'p', '"_dP', { noremap = true, silent = true })

-- Move text up and down
vim.keymap.set('v', 'J', ':m .+1<CR>==', { noremap = true, silent = true, desc = 'Move down a line' })
vim.keymap.set('v', 'K', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'Move up a line' })
vim.keymap.set('x', 'J', ":move '>+1<CR>gv-gv", { noremap = true, silent = true, desc = 'Move down a line' })
vim.keymap.set('x', 'K', ":move '<-2<CR>gv-gv", { noremap = true, silent = true, desc = 'Move up a line' })

-- Exit terminal mode in the builtin terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
