local M = {}

M.ui = {
  theme = "vscode_dark",
  theme_toggle = { "vscode_dark", "jellybeans" },

  nvdash = {
    load_on_startup = true,
  },

  statusline = {
    theme = "vscode_colored",
  },

  term = {
    float = {
      row = 0.15,
      col = 0.2,
      width = 0.6,
      height = 0.6,
      border = "double",
    },
  },

  hl_override = {
    Comment = {
      italic = true,
    },

    ["@keyword.exception"] = {
      link = "Conditional",
    },

    ["@variable.member"] = {
      fg = "blue",
    },
  },

  changed_themes = {
    vscode_dark = {
      base_16 = {
        base00 = "#0F0F0F",
        base01 = "#202020",
        base03 = "#4D4D4D",
        base04 = "#808080",
        base08 = "#87CEFA",
        base0B = "#CE9178",
      },
      base_30 = {
        white = "#F4F4F4",
        black = "#0F0F0F",
        black2 = "#202020",
        pink = "#F4C2C2",
        green1 = "#00FF7F",
        yellow = "#FFC40C",
        teal = "#008080",
        orange = "#FFA500",
        pmenu_bg = "#4169E1",
      },
    },
  },
}

return M
