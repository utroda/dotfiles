return {
  "kkoomen/vim-doge",
  build = ':call doge#install()',
  config = function()
    vim.api.nvim_set_keymap('n', '<Leader>d', '<Plug>(doge-generate)', {})
  end
}
