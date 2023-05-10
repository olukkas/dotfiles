vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- centealize cursor on navigatin
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- tab navegation
vim.keymap.set("n", "te", ":tabedit<CR>", { desc = "new [T]ab [E]dit" })
vim.keymap.set("n", "<Tab>", ":tabNext<CR>", { desc = 'next tab' })
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", { desc = 'previous tabe' })
