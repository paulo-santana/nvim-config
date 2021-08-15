local nvim_set_keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local set_nmap = function(key, action)
    nvim_set_keymap('n', key, action, opts)
end

set_nmap('<leader>xx', '<cmd>TroubleToggle<cr>')
set_nmap('<leader>xw', '<cmd>Trouble lsp_workspace_diagnostics<cr>')
set_nmap('<leader>xd', '<cmd>Trouble lsp_document_diagnostics<cr>')
set_nmap('<leader>xl', '<cmd>Trouble loclist<cr>')
set_nmap('<leader>xq', '<cmd>Trouble quickfix<cr>')
set_nmap('gr', '<cmd>Trouble lsp_references<cr>')
