-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
map('i', 'jj', '<Esc>')
map('n', '<leader>t', '<C-^>')
map('n', '<C-p>', '<cmd>Telescope find_files<cr>')
map('n', '<C-t>', '<cmd>Telescope treesitter<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fc', '<cmd>Telescope git_commits<cr>')
map('n', '<leader>fb', '<cmd>Telescope git_branches<cr>')
map('n', '<leader>ft', '<cmd>TodoTelescope<cr>')
map('n', '<leader>fs', '<cmd>Telescope treesitter<cr>')
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', 'Y', 'y$')

-- keep in center of screen
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', 'J', 'mzJ`v')

-- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>')
-- map('i', '<leader>s', '<C-c>:w<CR>')

-- Toggle tags
map("n", "<leader>o", ":SymbolsOutline<cr>", opts)

