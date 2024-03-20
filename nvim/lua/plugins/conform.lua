return {
    'stevearc/conform.nvim', -- Autoformat
    opts = {
        notify_on_error = false,
        formatters_by_ft = {
            lua = { 'stylua' },
            -- TODO: Java required? Should fall back to LSP formatter
        }
    }
}
