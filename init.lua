local opt = vim.opt
local cmd = vim.cmd
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

autocmd("BufWinLeave", {
  pattern = "*.*",
  desc = "save view (folds), when closing file",
  command = "mkview",
})

autocmd("BufWinEnter", {
  pattern = "*.*",
  desc = "load view (folds), when opening file",
  command = "silent! loadview",
})

-- appearance
opt.background = "dark"
opt.list = true

cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
