return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ['ui-select'] = {
            require("telescope.themes").get_dropdown {
            }
          }
        },
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
              height =  0.75,
              preview_width = 0.25,
            },
          },
          color_devicons = true,
          sorting_strategy = "ascending",
          set_env = { ["COLORTERM"] = "truecolor" },
        }
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>sc', builtin.git_commits, {})
      vim.keymap.set('n', '<leader>sb', builtin.git_branches, {})
      vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<cr>', {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

      require("telescope").load_extension("ui-select")
    end
  },
}
