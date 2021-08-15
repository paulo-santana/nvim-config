local dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode',
    name = 'lldb',
}

dap.configurations.c = {
    {
        name = 'Default',
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input(
                'Path to executable: ',
                vim.fn.getcwd() .. '/a.out',
                'file'
            )
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        runInTerminal = false,
    },
}

require('dap.ext.vscode').load_launchjs()
vim.g.dap_virtual_text = true
