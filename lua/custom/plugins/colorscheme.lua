return {
  'savq/melange-nvim',
  priority = 1000, -- Ensure it loads first
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'melange',
    },
  },
}
