--[[
    - :Tutor
    - :help
    - lua-guide or https://neovim.io/doc/user/lua-guide.html
--]]

-- Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.g.netrw_banner = 0
-- Tree view
vim.g.netrw_liststyle = 3
require 'lazy-bootstrap'
require 'lazy-plugins'

require 'autocmd'
require 'keymaps'

require 'options'

