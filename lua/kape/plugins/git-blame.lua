return {
  'f-person/git-blame.nvim',
  config = function()
    require('gitblame').setup {
      enable = false,
    }
  end,
  vim.keymap.set('n', '<leader>b', '<cmd>GitBlameToggle<CR>', { desc = 'Toggle blame' }), -- toggle file explorer
}
