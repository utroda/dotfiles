return {
  --  {
  --  "nyoom-engineering/oxocarbon.nvim",
  --  --"catppuccin/nvim",
  --  lazy = false,
  --  name = "oxocarbon",
  --  priority = 1000,
  --  config = function()
  --    vim.cmd.colorscheme "oxocarbon"
  --    vim.opt.background = "dark"
  --    -- Set 'Normal' highlighting in your Neovim configuration (Lua syntax)
  --    -- vim.cmd('hi Normal ctermbg=none guibg=none')
  --   end
  -- },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()

      require("nordic").load({
        cursorline = {
          bold_number = true,
          theme = 'dark',
        }
      })
    end
  }
}
