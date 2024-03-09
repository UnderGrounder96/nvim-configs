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
  t = {
    ["<Esc><Esc>"] = { "<C-\\><C-N>", "Exit terminal mode", opts },
  },
}

-- more keybinds!
M.disabled = {
  n = {
    ["<leader>gt"] = "",
  },
}

M.nvterm = {
  plugin = true,

  n = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle float terminal",
    },
  },
}

M.gitsigns = {
  plugin = true,

  n = {
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },

    ["<leader>gt"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  },
}

return M
