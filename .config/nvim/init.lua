require("lucas")

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
