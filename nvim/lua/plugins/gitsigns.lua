return {
  'lewis6991/gitsigns.nvim', -- Git signs in gutter, blame, etc.
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '-' }
    }
  }
}
