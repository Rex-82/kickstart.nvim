return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
  },
  config = function()
    require('auto-session').setup {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  end,
}
