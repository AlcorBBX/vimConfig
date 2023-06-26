M = {}

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)

vim.api.nvim_set_keymap(
	"n",
	"<tab>",
	"<cmd>lua require('telescope').extensions.bookmark.filemarks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Filemarks'})<cr>",
	opts
)
vim.api.nvim_set_keymap(
	"n",
	"<s-tab>",
	"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
	opts
)

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
