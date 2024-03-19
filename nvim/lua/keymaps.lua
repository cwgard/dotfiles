local km = vim.keymap.set

km('n', '<leader>jk', vim.cmd.Ex, { desc = '[j]ump bac[k]' })

km('n', '<leader><C-a>', 'ggVG', { desc = 'Select [A]ll' })

km('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlight up' })
km('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlight down' })

km('n', 'J', 'mzJ`z', { desc = 'Join next line' })

-- Center screen after scrolling
km('n', '<C-f>', '<C-f>zz')
km('n', '<C-b>', '<C-b>zz')
km('n', '<C-d>', '<C-d>zz')
km('n', '<C-u>', '<C-u>zz')

-- Center screen after search
km('n', 'n', 'nzzzv')
km('n', 'N', 'Nzzzv')

-- Copy and paste into and from system clipboard
km({ 'n', 'v' }, '<leader>y', [["+y]])
km('n', '<leader>Y', [["+Y]])
km({ 'n', 'v' }, '<leader>p', [["+p]])
km('n', '<leader>P', [["+P]])

km({ 'n', 'v' }, '<leader>d', [["_d]], { desc = '[d]elete into void' })

km('n', 'q', ':q<CR>', { desc = 'Quit' })
km('n', 'Q', 'ZQ', { desc = 'Quit without saving' })

km({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, { desc = '[f]ormat' })

-- Navigate quickfix list
km('n', '<C-k>', '<cmd>cnext<CR>zz')
km('n', '<C-j>', '<cmd>cprev<CR>zz')
-- Navigate location list
km('n', '<leader><C-k>', '<cmd>lnext<CR>zz')
km('n', '<leader><C-j>', '<cmd>lprev<CR>zz')

-- Substitute word under cursor
km('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Diagnostic
km('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
km('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
km('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
km('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode. Won't work in all emulators/tmux/etc. Can also use <C-\><C-n>
km('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Alt+Ctrl+h/j/k/l to navigate windows
km('n', '<A-C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
km('n', '<A-C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
km('n', '<A-C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
km('n', '<A-C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })
