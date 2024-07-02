return {
  'ellisonleao/gruvbox.nvim',
  'NLKNguyen/papercolor-theme',
  'sainnhe/gruvbox-material',
  priority = 1000, -- Ensure it loads first
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'gruvbox-material',
      gruvbox_material_background = 'soft',
    },
  },
}
