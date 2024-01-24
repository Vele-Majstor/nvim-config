require("tokyonight").setup({
  style = "moon", 
  light_style = "day", 
  transparent = false,
  terminal_colors = true, 
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
    sidebars = "dark", 
    floats = "dark", 
  },
  sidebars = { "qf", "help" }, 
  day_brightness = 0.3, 
  hide_inactive_statusline = false, 
  dim_inactive = false, 
  lualine_bold = false,
})

function ColorMyPencils(color) 
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end


ColorMyPencils('tokyonight')
