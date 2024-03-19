require("nvchad.options")

local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- line number
opt.relativenumber = true

-- file
opt.filetype = "on"
opt.fileformat = "unix"
opt.swapfile = false
opt.updatetime = 2500

-- text format
opt.wrap = true
opt.scrolloff = 8
opt.colorcolumn = "80"

-- spelling
opt.spell = true
opt.spelllang = "en"

-- indenting
opt.lbr = true
opt.autoindent = true
opt.breakindent = true
opt.formatoptions = "l"

-- folding
opt.foldlevel = 6
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

autocmd("BufLeave", {
  pattern = "*.*",
  desc = "save view (folds), when closing file",
  command = "mkview",
})

autocmd("BufEnter", {
  pattern = "*.*",
  desc = "load view (folds), when opening file",
  command = "silent! loadview",
})

-- appearance
opt.list = true
opt.background = "dark"
opt.termguicolors = true
