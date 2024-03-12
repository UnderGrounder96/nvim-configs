require("nvchad.mappings")

local map = vim.keymap.set

local mappings = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move +highlighted lines" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move -highlighted lines" },
  },

  x = {
    -- Paste without copying replaced text
    -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
    ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', "Dont copy replaced text" },
  },

  n = {
    [";"] = { ":", "enter command mode" },

    -- telescope
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },

    --  ui.term
    ["<leader>tt"] = {
      function()
        require("nvchad.term").toggle({
          pos = "float",
          id = "floatTerm",
        })
      end,
      "Toggle float terminal",
    },

    -- gitsigns
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

for mode, maps in pairs(mappings) do
  for key, val in pairs(maps) do
    map(mode, key, val[1], { desc = val[2], nowait = true })
  end
end

-- local disabled = {
-- 	n = {
-- 		["<leader>gt"] = "",
-- 	},
-- }
--
-- for mode, maps in pairs(disabled) do
-- 	for key, _ in pairs(maps) do
-- 		vim.keymap.del(mode, key)
-- 	end
-- end
