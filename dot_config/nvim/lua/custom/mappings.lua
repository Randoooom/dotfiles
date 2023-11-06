---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-M-x>"] = { ":RustLsp expandMacro <CR>", "expand rust macro" }
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
