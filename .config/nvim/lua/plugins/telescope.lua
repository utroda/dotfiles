local M = {}

local opts = {
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        height =  0.75,
        preview_width = 0.25,
      },
    },
    file_ignore_patterns = {
      "node_modules/",
      ".git/",
      ".cache",
      "%.o",
      "%.out",
      "%.class",
      "%.pdf",
      "%.mkv",
      "%.mp4",
      "%.zip",
    },
    color_devicons = true,
    sorting_strategy = "ascending",
    set_env = { ["COLORTERM"] = "truecolor" },
    extensions = {
      -- fzf = {
      --  fuzzy = true,
      --  override_generic_sorter = true,
      --  override_file_sorter = true,
      --  case_mode = "ignore_case",
      --},
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim" -- add this value
    },
  },
}

function M.setup()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    return
  end

  telescope.setup(opts)
  require('telescope').load_extension('fzf')
end

return M
