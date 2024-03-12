local data = vim.fn.stdpath("data")
vim.g.base46_cache = data .. "/nvchad/base46/"
vim.g.mapleader = " "

-- clone lazy
local lazypath = data .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- bootstrap lazy
local lazy_config = require("configs.lazy")
lazy_config.lockfile = data .. "/lazy/lazy-lock.json"
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require("configs.options")
    end,
  },
  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("nvchad.autocmds")

vim.schedule(function()
  require("configs.mappings")
end)
