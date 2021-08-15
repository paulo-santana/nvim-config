local Terminal = require('toggleterm.terminal').Terminal
require('toggleterm').setup({
    -- size can be a number or function which is passed the current terminal
    size = function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'horizontal', -- | 'vertical' | 'window' | 'float'
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    -- This field is only relevant if direction is set to 'float'
    --float_opts = {
    --	-- The border key is *almost* the same as 'nvim_win_open'
    --	-- see :h nvim_win_open for details on borders however
    --	-- the 'curved' border is a custom border type
    --	-- not natively supported but implemented in this plugin.
    --	border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    --	width = <value>,
    --	height = <value>,
    --	winblend = 3,
    --	highlights = {
    --		border = "Normal",
    --		background = "Normal",
    --	}
    --}
})

local make_run_term = Terminal:new({
    cmd = 'make run',
    direction = 'float',
    close_on_exit = false,
    float_opts = {
        border = 'curved',
    },
    on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<CMD>close<CR>', {
            noremap = true,
            silent = true,
        })
    end,
})

function _make_run()
    make_run_term:toggle()
end

vim.api.nvim_set_keymap('n', '<F5>', '<CMD>lua _make_run()<CR>', {
    noremap = true,
    silent = true,
})
