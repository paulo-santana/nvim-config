vim.g.mapleader = ' '

local options = { noremap = true }

local set_nmap = function(map, action)
    vim.api.nvim_set_keymap('n', map, action, options)
end
local set_imap = function(map, action)
    vim.api.nvim_set_keymap('i', map, action, options)
end
local set_vmap = function(map, action)
    vim.api.nvim_set_keymap('v', map, action, options)
end

-- vim.api.nvim_set_keymap('n', 'gf', ':e <cfile><CR>', {noremap = true})
set_nmap('<M-Up>', '<cmd>resize -5<cr>')
set_nmap('<M-Down>', '<cmd>resize +5<cr>')
set_nmap('<M-Left>', '<cmd>vert resize -10<cr>')
set_nmap('<M-Right>', '<cmd>vert resize +10<cr>')

-- go back to the last file
set_nmap('<c-l>', '<c-^>')

set_nmap('<leader>nh', '<CMD>nohlsearch<CR>')

-- quickfix list commands
set_nmap('<leader>cc', '<CMD>cc<CR>')
set_nmap('<leader>n', '<CMD>cnext<CR>')
set_nmap('<leader>p', '<CMD>cprevious<CR>')

-- #buildAndRun
set_nmap('<F4>', '<CMD>make!<CR>')
set_nmap('<F5>', '<CMD>make! run<CR>')

set_nmap('J', 'mzJ`z')

-- Make Y behave like the other capital keys
set_nmap('Y', 'y$')

-- undo breakpoints
set_imap(',', ',<C-g>u')
set_imap('.', '.<C-g>u')
set_imap('!', '!<C-g>u')
set_imap('?', '?<C-g>u')

-- moving text
set_vmap('J', ":m '>+1<CR>gv=gv")
set_vmap('K', ":m '<-2<CR>gv=gv")
set_imap('<C-j>', '<esc>:m .+1<CR>==a')
set_imap('<C-k>', '<esc>:m .-2<CR>==a')
set_nmap('<leader>j', ':m .+1<CR>==')
set_nmap('<leader>k', ':m .-2<CR>==')
