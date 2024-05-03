return {
  'mbbill/undotree',
  keys = { -- load the plugin only when using it's keybinding:
    { '<leader>fu', '<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>', desc = 'Show UndoTree' },
  },
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
