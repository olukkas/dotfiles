vim.g.mapleader = " "

-- move selected text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- centealize cursor on navigatin
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- tab navegation
vim.keymap.set("n", "te", "<cmd>tabedit<CR>", { desc = "new [T]ab [E]dit" })
vim.keymap.set("n", "th", "<cmd>-tabmove<CR>", { desc = "move the tab page to the left" })
vim.keymap.set("n", "tl", "<cmd>+tabmove<CR>", { desc = "move the tab page to the right" })
vim.keymap.set("n", "<Tab>", "<cmd>tabNext<CR>", { desc = 'next tab' })
vim.keymap.set("n", "<S-Tab>", "<cmd>tabprevious<CR>", { desc = 'previous tabe' })

-- tests
vim.keymap.set('n', '<leader>tf', '<cmd>TestFile<CR>', { desc = '[T]est [F]ile' })
vim.keymap.set('n', '<leader>tt', '<cmd>TestNearest<CR>', { desc = '[T]est [T]his' })


-- git
vim.keymap.set('n', 'gl', '<cmd>diffget //3<CR>')
vim.keymap.set('n', 'gh', '<cmd>diffget //2<CR>')
vim.keymap.set('n', '<leader>gp', '<cmd>G push<CR>')

-- go shortcuts
vim.keymap.set('n', '<C-e>', '<cmd>GoIfErr<CR>')
