---@type MappingsTable
local M = {}
local opts = { nowait = true }

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move +highlighted lines", opts },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move -highlighted lines", opts },
  },
}

-- more keybinds!
M.lspsaga = {
  n = {
    ["t"] = { "<cmd>Lspsaga term_toggle<CR>", "enable floating terminal", opts },
    ["f"] = { "<cmd>Lspsaga code_action<CR>", "execute code action check", opts },
  },
}

return M
