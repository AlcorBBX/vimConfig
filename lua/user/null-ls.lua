-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/configuration/language-features/linting-and-formatting>
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua" },
	{
		command = "rustfmt",
		filetypes = { "rust" },
	},
	{
		command = "prettierd",
		-- filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
	},
})
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		exe = "eslint",
		filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
	},
})
