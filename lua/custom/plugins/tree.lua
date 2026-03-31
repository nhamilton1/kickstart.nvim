return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  keys = {
    { '\\', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle file tree' },
    { '<leader>ff', '<cmd>NvimTreeFindFile<cr>', desc = 'Find file in tree' },
  },
  opts = {
    filters = {
      custom = { '.git', 'node_modules', '.vscode' },
      dotfiles = true,
    },
    git = {},
    view = {
      adaptive_size = true,
      float = {
        enable = true,
      },
    },
  },
}
