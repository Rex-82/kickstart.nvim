return {
  -- {
  --   'nvim-neotest/neotest',
  --   dependencies = {
  --     'nvim-neotest/nvim-nio',
  --     'nvim-lua/plenary.nvim',
  --     'antoinemadec/FixCursorHold.nvim',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  -- },
  -- {
  --   'nvim-neotest/neotest',
  --   dependencies = {
  --     'marilari88/neotest-vitest',
  --   },
  --   config = function()
  --     require('neotest').setup {
  --       adapters = {
  --         require 'neotest-vitest',
  --       },
  --     }
  --     -- Testing keymaps
  --     vim.keymap.set('n', '<leader>ta', '<cmd>lua require("neotest").run.attach()<cr>', { desc = 'Attach' })
  --     vim.keymap.set('n', '<leader>tf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', { desc = 'Run File' })
  --     vim.keymap.set('n', '<leader>tF', '<cmd>lua require("neotest").run.run({vim.fn.expand("%"), strategy = "dap"})<cr>', { desc = 'Debug File' })
  --     vim.keymap.set('n', '<leader>tl', '<cmd>lua require("neotest").run.run_last()<cr>', { desc = 'Run Last' })
  --     vim.keymap.set('n', '<leader>tL', '<cmd>lua require("neotest").run.run_last({ strategy = "dap" })<cr>', { desc = 'Debug Last' })
  --     vim.keymap.set('n', '<leader>tn', '<cmd>lua require("neotest").run.run()<cr>', { desc = 'Run Nearest' })
  --     vim.keymap.set('n', '<leader>tN', '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', { desc = 'Debug Nearest' })
  --     vim.keymap.set('n', '<leader>to', '<cmd>lua require("neotest").output.open({ enter = true })<cr>', { desc = 'Output' })
  --     vim.keymap.set('n', '<leader>tS', '<cmd>lua require("neotest").run.stop()<cr>', { desc = 'Stop' })
  --     vim.keymap.set('n', '<leader>ts', '<cmd>lua require("neotest").summary.toggle()<cr>', { desc = 'Summary' })
  --   end,
  -- },
}
