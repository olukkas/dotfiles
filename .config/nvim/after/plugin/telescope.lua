require('telescope').setup {
    defaults = {
        prompt_prefix = "$ "
    }
}


local builtin = require('telescope.builtin')
local theme = require('telescope.themes')

require('telescope').load_extension('file_browser')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[P]roject [F]ile" })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "[G]it [F]ile" })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = "[G]it [B]ranches" })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    builtin.current_buffer_fuzzy_find(theme.get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser path=%:p:h select_buffer=true<cr>",
    { noremap = true }
)
