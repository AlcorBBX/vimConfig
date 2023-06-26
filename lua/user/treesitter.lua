-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.builtin.treesitter.ignore_install = { "html", "yaml", "bash" }

-- -- always installed on startup, useful for parsers without a strict filetype
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }
lvim.builtin.treesitter.ensure_installed = {
	"markdown",
	"javascript",
	"json",
	"lua",
	"typescript",
	"tsx",
	"css",
	"rust",
}
