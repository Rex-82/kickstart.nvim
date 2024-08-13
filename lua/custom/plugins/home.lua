return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      ' ╭╮╭┬─╮╭─╮┬  ┬┬╭┬╮',
      ' │││├┤ │ │╰┐┌╯││││',
      ' ╯╰╯╰─╯╰─╯ ╰╯ ┴┴ ┴',
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('d', '󰙨  > New draft', ':cd ~/Documents/projects/drafts/ <BAR> ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('l', '  > Sessions List', ':Telescope session-lens search_session<CR>'),
      dashboard.button('s', '  > Settings', ':e $MYVIMRC <CR>'),
      dashboard.button('q', '󰩈  > Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
