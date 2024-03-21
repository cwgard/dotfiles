return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim" 
    },
    config = function()
      local harpoon = require("harpoon")

      vim.keymap.set("n", "<leader>e", function() harpoon:list():append() end)

      vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end)

      vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end)

      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        }):find()
      end

      vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
        { desc = "Open harpoon window" })
    end
}
