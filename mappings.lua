---@type MappingsTable
local M = {}
local opts = { nowait = true }

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts },
  },
}

-- more keybinds!
M.lspsaga = {
  n = {
    ["t"] =  { "<cmd>Lspsaga term_toggle<CR>", "enable floating terminal", opts },
    ["f"] =  { "<cmd>Lspsaga code_action<CR>", "execute code action check", opts },
  },
}

return M

