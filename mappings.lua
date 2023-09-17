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
M.nvterm = {
  plugin = true,

  n = {
    ["t"] = {
      function()
        require("nvterm.terminal").toggle("float")
      end,
      "Toggle float terminal"
    },
  },
}

return M
