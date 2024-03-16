-- Must set leader before plugins are loaded
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'autocmd'
require 'keymaps'
require 'options'
require 'lazy-bootstrap'
require 'lazy-plugins'
