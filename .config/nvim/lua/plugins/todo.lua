local M = {}
M.setup = function()
  local status_ok, todos = pcall(require, "todo-comments")
  if not status_ok then
    return
  end

  todos.setup {
    highlight = {
      pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
    },
    search = {
      pattern = [[\b(KEYWORDS)]],
    }
  }
end
return M
