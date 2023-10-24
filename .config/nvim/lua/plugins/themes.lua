local M = {}

function M.setup()
  local status_ok, color_scheme = pcall(require, "nightfox")
  if not status_ok then
    return
  end

  color_scheme.setup {
    glow = {
      error_msg = false,
      type2 = false,
      func = false,
      keyword = false,
      operator = false,
      buffer_current_target = false,
      buffer_visible_target = false,
      buffer_inactive_target = false,
    },
  };

end

return M
