local helper = require("gx.helper")

local M = {}

M.filetype = "lua"

-- navigate to neovim github plugin url
function M.handle(mode, line)
  local pattern = '"[^%s~/]*/[^%s~/]*"'
  local username_repo = helper.find(line, mode, pattern)
  if username_repo then
    return "https://github.com/" .. username_repo:sub(2, -2)
  end
end

return M