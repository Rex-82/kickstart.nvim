return {
  'windwp/nvim-ts-autotag',
  event = 'BufReadPre',
  opts = {},
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
