-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}
-- TODO: hello there
-- WARN: don't do this
-- FIXME: don't do this
-- HACK: AVOID this
-- TEST: needs testing

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },

  ["@keyword.exception"] = {
    link = "Conditional",
  },

  ["@variable.member"] = {
    fg = "blue",
  },
}

return M
