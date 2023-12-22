-- :autocmd TermOpen * startinsert

-- Open terminals in insert mode
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    command = "startinsert"
})

-- Go to insert mode for already open terminals
vim.api.nvim_create_autocmd("BufEnter,BufWinEnter", {
    pattern = "term://*",
    command = "startinsert"
})

