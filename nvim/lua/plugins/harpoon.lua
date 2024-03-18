return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>e", mark.add_file, { desc = '[E] Harpoon Add' })
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

      vim.keymap.set("n", "<leader>h", function() ui.nav_file(1) end)
      vim.keymap.set("n", "<leader>j", function() ui.nav_file(2) end)
      vim.keymap.set("n", "<leader>k", function() ui.nav_file(3) end)
      vim.keymap.set("n", "<leader>l", function() ui.nav_file(4) end)
    end
}