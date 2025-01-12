--return {
--  'christoomey/vim-tmux-navigator',
--  keys = {
--    { 'C-h', ':TmuxNavigateLeft<CR>', desc = 'Tmux Navigate Left', silent = true, noremap = true },
--    { 'C-j', ':TmuxNavigateDown<CR>', desc = 'Tmux Navigate Down', silent = true, noremap = true },
--    { 'C-k', ':TmuxNavigateUp<CR>', desc = 'Tmux Navigate Up', silent = true, noremap = true },
--    { 'C-l', ':TmuxNavigateRight<CR>', desc = 'Tmux Navigate Right', silent = true, noremap = true },
--  },
--}
return {
  'christoomey/vim-tmux-navigator',
  config = function()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', 'C-h', ':TmuxNavigateLeft<CR>', opts)
    vim.keymap.set('n', 'C-j', ':TmuxNavigateDown<CR>', opts)
    vim.keymap.set('n', 'C-k', ':TmuxNavigateUp<CR>', opts)
    vim.keymap.set('n', 'C-l', ':TmuxNavigateRight<CR>', opts)
  end,
}
