require("toggleterm").setup({
    size = 20,
    open_mapping = [[<A-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'float',
    auto_scroll = true,
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
})

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-/><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-/><C-n<C-W>h]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-/><C-n<C-W>j]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-/><C-n<C-W>k]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-/><C-n<C-W>l]], opts)
end

-- vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
