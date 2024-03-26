return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    require('which-key').setup({
      window = {
        winblend = 10
      }})
    require('which-key').register {
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
    }
  end
}
