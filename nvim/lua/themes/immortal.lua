local M = {}

M.base_16 = {
  base00 = "#000000",
  base01 = "#121212",
  base02 = "#222222",
  base03 = "#333333",
  base04 = "#999999",
  base05 = "#c1c1c1",
  base06 = "#999999",
  base07 = "#c1c1c1",
  base08 = "#5f8787",
  base09 = "#aaaaaa",
  base0A = "#556677",
  base0B = "#7799bb",
  base0C = "#aaaaaa",
  base0D = "#888888",
  base0E = "#999999",
  base0F = "#444444",
}

M.base_30 = {
  white = M.base_16.base05,
  darker_black = M.base_16.base00,
  black = M.base_16.base00,
  black2 = M.base_16.base01,
  one_bg = M.base_16.base02,
  one_bg2 = M.base_16.base03,
  one_bg3 = M.base_16.base04,
  grey = M.base_16.base03,
  grey_fg = M.base_16.base04,
  grey_fg2 = M.base_16.base06,
  light_grey = M.base_16.base05,
  red = M.base_16.base08,
  baby_pink = M.base_16.base08,
  pink = M.base_16.base0A,
  line = M.base_16.base01,
  green = M.base_16.base0B,
  vibrant_green = M.base_16.base0B,
  blue = M.base_16.base0D,
  nord_blue = M.base_16.base0D,
  yellow = M.base_16.base0C,
  sun = M.base_16.base09,
  purple = M.base_16.base0E,
  dark_purple = M.base_16.base0F,
  teal = M.base_16.base0A,
  orange = M.base_16.base09,
  cyan = M.base_16.base0B,
  statusline_bg = M.base_16.base01,
  lightbg = M.base_16.base02,
  pmenu_bg = M.base_16.base0B,
  folder_bg = M.base_16.base0D,
}

M.type = "dark"

M = require("base46").override_theme(M, "blackmetal_immortal")

return M
