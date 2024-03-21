return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = {
                'bash', 'c', 'html', 'java', 'javascript', 'lua', 'markdown',
                'typescript', 'vim', 'vimdoc' },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            }
        end
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require('treesitter-context').setup {
                multiline_threshold = 1
            }
        end
    }
}

-- TODO: Additional Treesitter modules
-- TODO: Enable incremental selection: :help nvim-treesitter-incremental-selection-mod
