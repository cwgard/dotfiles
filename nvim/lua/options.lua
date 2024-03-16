vim.g.have_nerd_font = true

vim.g.netrw_banner = 0
-- Tree view
vim.g.netrw_liststyle = 3

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse
vim.opt.mouse = 'a' 

-- Don't show mode. It's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive search unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sign column in left (can be used for git, etc.)
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
-- NBSP: non-breaking space. Space where a linebreak is prevented
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview subtitutions while typing
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Highlight on search. Clear with <Esc>
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Insert X number of spaces with tab
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Number of spaces in auto-indentation
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Use undo file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'USERPROFILE' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.colorcolumn = '100'

