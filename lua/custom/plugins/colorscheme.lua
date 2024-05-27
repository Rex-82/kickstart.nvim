return {
  'ellisonleao/gruvbox.nvim',
  'NLKNguyen/papercolor-theme',
  priority = 1000, -- Ensure it loads first
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'gruvbox',
    },
  },
}
