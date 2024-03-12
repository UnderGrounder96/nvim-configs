return {
  {
    -- TODO: hello there
    -- WARN: might fail
    -- FIXME: patch me quick
    -- HACK: AVOID this
    -- TEST: needs testing
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    dependencies = "nvim-lua/plenary.nvim",
    opts = { signs = false },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPost",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowGreen",
        "RainbowCyan",
        "RainbowBlue",
        "RainbowViolet",
        "RainbowOrange",
      }

      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, highlight[1], { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, highlight[2], { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, highlight[3], { fg = "#98C379" })
        vim.api.nvim_set_hl(0, highlight[4], { fg = "#56B6C2" })
        vim.api.nvim_set_hl(0, highlight[5], { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, highlight[6], { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, highlight[7], { fg = "#D19A66" })
      end)

      require("ibl").setup({
        scope = {
          enabled = false,
        },
        indent = {
          highlight = highlight,
        },
      })
    end,
  },
}
