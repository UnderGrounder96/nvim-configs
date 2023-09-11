---@type MappingsTable
local M = {}
local opts = { nowait = true }

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts },
  },
}

-- more keybinds!

return M

