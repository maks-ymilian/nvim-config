-- run _init.vim
vim.cmd.source(vim.fn.stdpath("config") .. "/.vimrc")

-- lsp keybinds
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "go", vim.diagnostic.open_float)
vim.keymap.set("n", "ge", vim.diagnostic.goto_next)
vim.keymap.set("n", "gE", vim.diagnostic.goto_prev)

-- add left column for lsp diagnostics
vim.o.signcolumn = "yes"

-- disable .editorconfig
vim.g.editorconfig = false

require'nvim-treesitter.configs'.setup{
	ensure_installed = {
		"bash",
		"lua",
		"vimdoc",
		"json",
		"yaml",
		"regex",
		"comment",
		"markdown_inline",
		"toml",
		"graphql",
		"sql",
		"html",
		"css",
		"embedded_template",
		"dockerfile",
		"make",
		"cmake",
		"gitignore",
		"gitattributes",
		"gitcommit",
		"editorconfig",
		"ini",
		"xml",
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}
require("colorizer").setup{
	user_default_options = {
		names = false, -- "Name" codes like Blue or red.  Added from `vim.api.nvim_get_color_map()`
	},
}
require("mason").setup()

vim.lsp.config("jdtls", {
	settings = {
		java = {
			project = {
				sourcePaths = { "src" },
			},
		},
	},
})
vim.lsp.enable("clangd")
vim.lsp.enable("jdtls")
vim.lsp.enable("vtsls")
