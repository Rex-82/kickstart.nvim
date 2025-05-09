return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      -- array of strings("fix_all"|"add_missing_imports"|"remove_unused"|
      -- "remove_unused_imports"|"organize_imports") -- or string "all"
      -- to include all supported code actions
      -- specify commands exposed as code_actions
      expose_as_code_action = { 'all' },
      -- tsserver_path = '/home/simone/.local/share/fnm/node-versions/v22.14.0/installation/lib/node_modules/typescript-language-server/lib/cli.mjs',
    },
  },
}
