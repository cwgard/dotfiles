return {
    'stevearc/conform.nvim', -- Autoformat
    opts = {
        notify_on_error = false,
        formatters_by_ft = {
            lua = { 'stylua' },
            -- TODO: 03/20/24 importing correctly from mason
            -- but I might want/need to setup null-ls
            java = { 'google-java-format' }
        }
    }
}
