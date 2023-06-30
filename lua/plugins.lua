-- -- Additional Plugins <https://www.lunarvim.org/docs/configuration/plugins/user-plugins>
lvim.plugins = {
	-- NOTE rust
	-- { "simrat39/rust-tools.nvim" },
	-- { "rust-lang/rust.vim" },
	{
		"saecki/crates.nvim",
		config = function()
			require("crates").setup()
		end,
	},
	-- NOTE rust

	-- NOTE
	-- {
	-- 	-- Interactive database client for neovim
	-- 	{ "kndndrj/nvim-dbee" },
	-- },
	{
		-- About enhanced increment/decrement plugin
		"monaqa/dial.nvim",
	},
	{
		-- Cursor line number mode indicator
		"mawkler/modicator.nvim",
	},
	{
		-- Rainbow delimiters for Neovim through Tree-sitter
		"HiPhish/nvim-ts-rainbow2",
	},
	-- {
	-- 	-- fidget rewritten soon
	-- 	"j-hui/fidget.nvim",
	-- },
	{
		-- Neovim plugin to improve the default vim.ui interfaces
		"stevearc/dressing.nvim",
	},
	{ "windwp/nvim-autopairs" },
	{ "folke/zen-mode.nvim" },
	{ "mg979/vim-visual-multi" },
	{
		-- show colors (color: #fff)
		"norcalli/nvim-colorizer.lua",
	},
	{
		-- warnings, errors in botton showing
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		-- like TODO HACK WARNING FIX
		"folke/todo-comments.nvim",
	},
	{
		-- metrics, insights, and time tracking automatically generated from your programming activity
		"wakatime/vim-wakatime",
	},
	{ "vim-ctrlspace/vim-ctrlspace" },
	-- {
	-- 	"tzachar/cmp-tabnine",
	-- 	build = "./install.sh",
	-- 	dependencies = "hrsh7th/nvim-cmp",
	-- 	event = "InsertEnter",
	-- },
	-- NOTE

	-- NOTE Typescript
	{
		-- plugin to add vscode-style TailwindCSS completion to nvim-cmp
		"roobert/tailwindcss-colorizer-cmp.nvim",
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{ "stephenway/postcss.vim" },
	{
		"ggandor/lightspeed.nvim",
		event = "BufRead",
	},
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "pmizio/typescript-tools.nvim" },
	-- NOTE Typescript

	-- blazing fast minimap/scrollbar written in Rust
	-- {
	-- 	"wfxr/minimap.vim",
	-- 	build = "cargo install --locked code-minimap",
	-- 	cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
	-- 	config = function()
	-- 		vim.cmd("let g:minimap_width = 10")
	-- 		vim.cmd("let g:minimap_auto_start = 1")
	-- 		vim.cmd("let g:minimap_auto_start_win_enter = 1")
	-- 	end,
	-- },

	-- NOTE themes
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 			term_colors = true,
	-- 			transparent_background = false,
	-- 			no_italic = false,
	-- 			no_bold = false,
	-- 			styles = {
	-- 				comments = { "italic" },
	-- 				conditionals = {},
	-- 				loops = {},
	-- 				functions = {},
	-- 				keywords = {},
	-- 				strings = {},
	-- 				variables = {},
	-- 				numbers = {},
	-- 				booleans = {},
	-- 				properties = {},
	-- 				types = {},
	-- 			},
	-- 			color_overrides = {
	-- 				mocha = {
	-- 					base = "#000000",
	-- 					mantle = "#000000",
	-- 					crust = "#000000",
	-- 				},
	-- 			},
	-- 			highlight_overrides = {
	-- 				mocha = function(C)
	-- 					return {
	-- 						TabLineSel = { bg = C.pink },
	-- 						CmpBorder = { fg = C.surface2 },
	-- 						Pmenu = { bg = C.none },
	-- 						TelescopeBorder = { link = "FloatBorder" },
	-- 					}
	-- 				end,
	-- 			},
	-- 			integrations = {
	-- 				cmp = true,
	-- 				gitsigns = true,
	-- 				telescope = true,
	-- 				notify = false,
	-- 				mini = false,
	-- 				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- { "morhetz/gruvbox" },
	{ "sainnhe/gruvbox-material" },

	{ "EdenEast/nightfox.nvim" },
	{ "Mofiqul/dracula.nvim" },
	-- { "navarasu/onedark.nvim" },
	{ "sainnhe/everforest" },
	{ "rebelot/kanagawa.nvim" },
	-- { "projekt0n/github-nvim-theme" },
	{
		"ribru17/bamboo.nvim",
		name = "bamboo",
		config = function()
			require("bamboo").setup({
				-- Main options --
				style = "vulgaris", -- Choose between 'vulgaris' (regular) and 'multiplex' (greener)
				toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
				toggle_style_list = { "vulgaris", "multiplex" }, -- List of styles to toggle between (this option is essentially pointless now but will become useful if more style variations are added)
				transparent = false, -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- Change code style ---
				-- Options are italic, bold, underline, none
				-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
				code_style = {
					comments = "italic",
					keywords = "none",
					functions = "none",
					strings = "none",
					variables = "none",
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {}, -- Override highlight groups

				-- Plugins Config --
				diagnostics = {
					darker = false, -- darker colors for diagnostic
					undercurl = true, -- use undercurl instead of underline for diagnostics
					background = true, -- use background color for virtual text
				},
			})
		end,
	},
	-- Available values: default, atlantis, andromeda, shusia, maia, espresso
	-- { "sainnhe/sonokai" },
	-- NOTE themes
}

-- table.insert(lvim.plugins, {
--   "zbirenbaum/copilot-cmp",
--   event = "InsertEnter",
--   dependencies = { "zbirenbaum/copilot.lua" },
--   config = function()
--     vim.defer_fn(function()
--       require("copilot").setup() -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
--       require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
--     end, 100)
--   end,
-- })
