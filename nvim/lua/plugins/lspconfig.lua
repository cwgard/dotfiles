return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
      callback = function(event)
        local km = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        km('<leader>TD', require('telescope.builtin').lsp_type_definitions, '[T]ype [D]efinition')
        km('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        km('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        km('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        km('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
        km('K', vim.lsp.buf.hover, 'Hover Documentation')
        km('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        km('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        km('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition') -- C-T to go back
        km('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight, -- Highlight references when cursor hovers
          })

          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references, -- Clear highlights when cursor moves
          })
        end
      end,
    })

    --  Add cmp capabilities and broadcast to LSP servers
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    local servers = {
      tsserver = {},
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              checkThirdParty = false,
              library = { -- Get neovim lua config (runtime) files and tell lua_ls about them 
                unpack(vim.api.nvim_get_runtime_file('', true)),
              },
              -- TODO: If lua_ls is really slow try this instead: library = { vim.env.VIMRUNTIME }
            },
            completion = {
              callSnippet = 'Replace',
            },
            -- TODO: Toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            -- diagnostics = { disable = { 'missing-fields' } },
          },
        },
      },
    }

    require('mason').setup()

    -- Use mason to install additional tools
    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, {
      'stylua',
    })
    require('mason-tool-installer').setup { ensure_installed = ensure_installed }

    require('mason-lspconfig').setup {
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          -- This handles overriding only values explicitly passed
          -- by the server configuration above. Useful when disabling
          -- certain features of an LSP (for example, turning off formatting for tsserver)
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end
      }
    }
  end
}

