-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  -- version = '*',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<C-n>', ':Neotree filesystem toggle left<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>nr', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enable = true,
        leave_dirs_open = false,
      },
      group_empty_dirs = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          '.DS_Store',
          '.git',
        },
      },
      window = {
        width = 50,
        side = 'left',
        mappings = {
          ['<C-n>'] = 'close_window',
        },
      },
    },
  },
}
