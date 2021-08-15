local null_ls = require('null-ls')
local lspconfig = require('lspconfig')

local norme = require('norme')

null_ls.config({
	sources = {
		null_ls.builtins.formatting.stylua,
	}
})

lspconfig['null-ls'].setup({
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd('autocmd BufWritePost *.lua lua vim.lsp.buf.formatting()')
        end
    end,
})
norme.setup()
