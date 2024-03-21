return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      window = {
        width = 20
      }
    }
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { desc = '[n] Neo-tree reveal' })
  end,
}
