-- Credits to original theme https://github.com/ghgofort/vscode-neon-vommit-theme
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#f0f0f0",
  darker_black = "#1D1D1D",
  black = "#222222",  --  nvim bg
  black2 = "#2F2F2F",
  one_bg = "#363636", -- real bg of onedark
  one_bg2 = "#3E3E3E",
  one_bg3 = "#464646",
  grey = "#4D4D4D",
  grey_fg = "#555555",
  grey_fg2 = "#5D5D5D",
  light_grey = "#787878",
  red = "#FF6F77",
  baby_pink = "#FF55DD",
  pink = "#FF00AA",
  line = "#363942", -- for lines like vertsplit
  green = "#76EE00",
  vibrant_green = "#76EE00",
  nord_blue = "#6796e6",
  blue = "#4499FF",
  yellow = "#FFFF00",
  sun = "#E6DB74",
  purple = "#CBC3FF",
  dark_purple = "#CC33FF",
  teal = "#33CC99",
  orange = "#FD971F",
  cyan = "#66D9EF",
  statusline_bg = "#2F302A",
  lightbg = "#3E3F39",
  pmenu_bg = "#99c366",
  folder_bg = "#61afef",
}

M.base_16 = {
  base00 = "#222222",
  base01 = "#383830",
  base02 = "#49483e",
  base03 = "#75715e",
  base04 = "#BBAA99",
  base05 = "#f8f8f2",
  base06 = "#f5f4f1",
  base07 = "#f9f8f5",
  base08 = "#fd971f",
  base09 = "#BB77FF",
  base0A = "#E6DB74",
  base0B = "#76EE00",
  base0C = "#66D9EF",
  base0D = "#4499FF",
  base0E = "#FF00AA",
  base0F = "#FF6F77",
}

M.polish_hl = {
  treesitter = {
    ["@constant"] = { fg = M.base_30.blue },
    ["@constant.builtin"] = { fg = M.base_30.blue },
    ["@constant.macro"] = { fg = M.base_30.blue },

    ["@variable"] = { fg = M.base_30.cyan },
    ["@variable.member"] = { fg = M.base_16.base09 },

    ["@property"] = { fg = M.base_30.cyan },

    ["@string"] = { fg = M.base_30.purple },
    ["@character"] = { fg = M.base_30.purple },

    ["@comment"] = { fg = M.base_16.base04 },

    ["@punctuation.bracket"] = { fg = M.base_30.sun },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },

    ["@constructor"] = { fg = M.base_30.sun },

    ["@function"] = { fg = M.base_30.green },
    ["@function.builtin"] = { fg = M.base_30.green },
    ["@function.macro"] = { fg = M.base_30.green },
    ["@function.call"] = { fg = M.base_30.green },
    ["@function.method"] = { fg = M.base_30.green },
    ["@function.method.call"] = { fg = M.base_30.green },

    ["@operator"] = { fg = M.base_30.pink },

    ["@attribure"] = { fg = M.base_30.green },

    ["@number"] = { fg = M.base_30.teal },
    ["@number.float"] = { fg = M.base_30.teal },

    ["@scope"] = { fg = M.base_30.yellow },

    ["@markup.heading"] = { fg = M.base_30.teal },

    ["@type.builtin"] = { fg = M.base_30.red },

    ["@keyword.repeat"] = { fg = M.base_30.pink },
    ["@keyword.operator"] = { fg = M.base_30.yellow },

    ["@module"] = { fg = M.base_30.cyan },
    ["@module.builtin"] = { fg = M.base_30.cyan },
  },
  syntax = {
    Type = { fg = M.base_30.cyan },
    Include = { fg = M.base_30.pink },
  },
}

M.type = "dark"

return M
