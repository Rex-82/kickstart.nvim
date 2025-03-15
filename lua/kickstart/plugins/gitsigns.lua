-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: gitsigns is already included in init.lua but contains only the base
-- config. This will add also the recommended keymaps.

return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  config = function()
    require('gitsigns').setup {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']h', function()
          if vim.wo.diff then
            vim.cmd.normal { ']h', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Navigate to [N]ext [H]unk' })

        map('n', '[h', function()
          if vim.wo.diff then
            vim.cmd.normal { '[h', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Navigate to [P]revious [H]unk' })

        -- Actions
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = '[H]unk [S]tage' })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = '[H]unk [R]eset' })
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[H]unk [S]tage in Visual Mode' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[H]unk [R]eset in Visual Mode' })
        map('n', '<leader>hS', gitsigns.stage_buffer, { desc = '[H]unk [S]tage Buffer' })
        map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = '[H]unk [U]ndo Stage' })
        map('n', '<leader>hR', gitsigns.reset_buffer, { desc = '[H]unk [R]eset Buffer' })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = '[H]unk [P]review' })
        map('n', '<leader>hb', function()
          gitsigns.blame_line { full = true }
        end, { desc = '[H]unk [B]lame Line (Full)' })
        map('n', '<leader>hB', gitsigns.toggle_current_line_blame, { desc = 'Toggle Line blame' })
        map('n', '<leader>hd', gitsigns.diffthis, { desc = '[H]unk [D]iff This' })
        map('n', '<leader>hD', function()
          gitsigns.diffthis '~'
        end, { desc = '[H]unk [D]iff This (~)' })
        map('n', '<leader>td', gitsigns.toggle_deleted, { desc = '[T]oggle [D]eleted' })

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'Select [H]unk as Text Object' })
      end,
    }
  end,
}
