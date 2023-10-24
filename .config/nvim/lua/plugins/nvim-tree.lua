local M = {}

function M.setup()
  local status_ok, nvim_tree = pcall(require, "nvim-tree")
  if not status_ok then
    return
  end

  nvim_tree.setup {
    view = {
      width = 48,
      adaptive_size = true,
      side = "right",
    }
  }

end
return M
