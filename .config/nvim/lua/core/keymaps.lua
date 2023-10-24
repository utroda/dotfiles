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

-- Change leader to a space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
map('i', 'jj', '<Esc>')
map('n', '<leader>t', '<C-^>')
map('n', '<C-p>', '<cmd>Telescope find_files<cr>')
map('n', '<C-t>', '<cmd>Telescope treesitter<cr>')
map('n', '<leader>f', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>sg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>sc', '<cmd>Telescope git_commits<cr>')
map('n', '<leader>sb', '<cmd>Telescope git_branches<cr>')
map('n', '<leader>st', '<cmd>TodoTelescope<cr>')
map('n', '<leader>sts', '<cmd>Telescope treesitter<cr>')
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', 'Y', 'y$')

-- keep in center of screen
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', 'J', 'mzJ`v')

-- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>')
-- map('i', '<leader>s', '<C-c>:w<CR>')
--
 -- See `:help K` for why this keymap
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')
map('n', '<leader>K', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition<cr>')
map('n', 'gI', '<cmd>lua vim.lsp.buf.implementation<cr>')
