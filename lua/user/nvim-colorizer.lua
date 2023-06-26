local status_ok, nvim_colorizer = pcall(require, "colorizer")
if not status_ok then
	return
end
-- nvim-colorizer
-- #000
nvim_colorizer.setup({ "css", "scss", "html", "javascript", "lua" }, {
	RGB = true, -- #RGB hex codes
	RRGGBB = true, -- #RRGGBB hex codes
	RRGGBBAA = true, -- #RRGGBBAA hex codes
	rgb_fn = true, -- CSS rgb() and rgba() functions
	hsl_fn = true, -- CSS hsl() and hsla() functions
	css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
})
