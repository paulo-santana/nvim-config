local null_ls = require("null-ls")
local lspconfig = require("lspconfig")

local norme = require("norme")

local norminette_c = norme.norminette_c
local norminette_h = norme.norminette_h

null_ls.config({
	sources = {
		norminette_c, -- Source for C files
		norminette_h, -- Source for H files
		null_ls.builtins.formatting.stylua, -- Other null-ls sources you might use
	},
})

lspconfig["null-ls"].setup({
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePost *.lua lua vim.lsp.buf.formatting()")
		end
	end,,
})
