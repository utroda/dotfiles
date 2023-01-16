local M = {}

local opts = {
  ensure_installed = {},
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
    disable = { "latex"  },
  },
  context_commentstring = {
    enable = true,
    config =  {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
      json = "",
    },
  },
  indent = {
    enable =  false,
    disable = { "yaml"  },
  },
  autotag =  {
    enable  = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 5000, -- Do not enable for files with more than 1000 lines, int
  },
}

function M.setup()
  -- avoid running in headless mode since it's harder to detect failures
  if #vim.api.nvim_list_uis() == 0 then
    return
  end

  local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    return
  end

  treesitter_configs.setup(opts)
end

return M
