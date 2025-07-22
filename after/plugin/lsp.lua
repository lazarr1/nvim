-- To edit this, its all in the lsp-zero.lua file (it doe snot use lsp-zero)
-- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
vim.keymap.set('n', '<leader>vrn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)


require('lspconfig').pylsp.setup({
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = true,
					ignore = { "N802", "N803", "N806" }, -- allow camelCase
				},
				pylint = { enabled = false },
				pyflakes = { enabled = false },
				mccabe = { enabled = false },
				yapf = { enabled = false },
				pydocstyle = { enabled = false },
			},
		},
	},
	cmd_env = {
		VIRTUAL_ENV = vim.fn.getcwd() .. "/venv",
		PATH = vim.fn.getcwd() .. "/venv/bin:" .. vim.env.PATH,
	},
})

require("mason").setup()
require("mason-lspconfig").setup()


vim.diagnostic.config({
	virtual_text = false, -- Disable inline error messages
	virtual_lines = false,
	signs = true,      -- Keep showing error/warning signs in gutter
	underline = true,  -- Underline errors in code
	update_in_insert = false,
	float = {
		border = "rounded",
		source = "always",
	},
})

-- Map 'K' key to show diagnostics popup on cursor hover
vim.keymap.set("n", "K", vim.diagnostic.open_float, { desc = "Show diagnostics" })



vim.api.nvim_create_user_command("LspFormat", function()
	vim.lsp.buf.format({ async = true })
	vim.lsp.buf.code_action()
end, {})
