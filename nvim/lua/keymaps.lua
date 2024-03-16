-- Exit file back to Netrw
vim.keymap.set('n', '<leader>jk', vim.cmd.Ex)

-- Control A
vim.keymap.set('n', '<leader><C-a>', 'ggVG', { desc = 'Select [A]ll' })

-- Move highlights lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Join next line
vim.keymap.set('n', 'J', 'mzJ`z')

-- Center screen after scrolling
vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Center screen after search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Copy and paste into and from system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]])
vim.keymap.set('n', '<leader>P', [["+P]])

-- Deletes into void register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = '[d]elete into void' })

-- Quit
vim.keymap.set('n', 'q', ':q<CR>', { noremap = true, silent = true })

-- Quit without saving
vim.keymap.set('n', 'Q', 'ZQ')

vim.keymap.set({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, { desc = '[f]ormat' })

-- Navigate quickfix list
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
-- Navigate location list
vim.keymap.set('n', '<leader><C-k>', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader><C-j>', '<cmd>lprev<CR>zz')

-- Substitute word under cursor
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Diagnostic
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode. Won't work in all emulators/tmux/etc. Can also use <C-\><C-n>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Ctrl+h/j/k/l to navigate windows
vim.keymap.set('n', '<A-C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

