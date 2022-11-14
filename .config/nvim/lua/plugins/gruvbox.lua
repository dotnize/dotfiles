local colors = require("gruvbox.palette")
require("gruvbox").setup({
  overrides = {
    SignColumn = { bg = colors.dark0 },
    GruvboxRedSign = { fg = colors.red, bg = colors.dark0, reverse = false },
    GruvboxGreenSign = { fg = colors.green, bg = colors.dark0, reverse = false },
    GruvboxYellowSign = { fg = colors.yellow, bg = colors.dark0, reverse = false },
    GruvboxBlueSign = { fg = colors.blue, bg = colors.dark0, reverse = false },
    GruvboxPurpleSign = { fg = colors.purple, bg = colors.dark0, reverse = false },
    GruvboxAquaSign = { fg = colors.aqua, bg = colors.dark0, reverse = false },
    GruvboxOrangeSign = { fg = colors.orange, bg = colors.dark0, reverse = false },
  }
})

vim.cmd("colorscheme gruvbox")
