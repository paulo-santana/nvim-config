require('telescope.actions')
local trouble = require('trouble.providers.telescope')
local telescope = require('telescope')

local set_key = vim.api.nvim_set_keymap

set_key('n', '<C-p>', '<cmd>Telescope find_files<CR>', { noremap = true })
set_key('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
set_key('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
set_key('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true })
set_key('n', '<leader>ft', '<cmd>Telescope<CR>', { noremap = true })

telescope.setup({
    defaults = {
        mappings = {
            i = { ['<c-q>'] = trouble.open_with_trouble },
            n = { ['<c-q>'] = trouble.open_with_trouble },
        },
    },
})
