local telescope = require("telescope.builtin")

-- vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
----------------------------
-- NORMAL ------------------
----------------------------
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- netrw directory listing, but better to use telescope
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {}) -- show current buffers
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>fo', telescope.oldfiles, {}) -- show recent files
vim.keymap.set('n', '<leader>fc', telescope.colorscheme, {}) -- switch color schemes
vim.keymap.set('n', '<leader>fd', ':Telescope file_browser<CR>', {}) -- open file_browser
vim.keymap.set('n', '<Space>', ':Telescope lsp_references<CR>', {}) -- show references for token under the cursor
vim.keymap.set('n', '<leader><Enter>', telescope.lsp_type_definitions, {}) -- show references for token under the cursor

-- up/down menu nav

-- git_bcommits <leader>gh
-- git_branches <leader>gb
-- git_commits <leader>ghh
-- git_files <leader>gf
-- git_stash <leader>gx
-- git_status <leader>gs

-- move between panes
vim.keymap.set('n', '<C-Up>', '<C-w>k')
vim.keymap.set('n', '<C-Down>', '<C-w>j')
vim.keymap.set('n', '<C-Left>', '<C-w>h')
vim.keymap.set('n', '<C-Right>', '<C-w>l')

-- resize panes
vim.keymap.set('n', '<C-S-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-S-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>')

vim.keymap.set('n', '<leader>tt', ':belowright split | term<CR>')

----------------------------
-- VISUAL ------------------
----------------------------
vim.keymap.set('v', '<S-Up>',   ":m '<-2<CR>gv=gv") -- move selection up
vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv") -- move selection down
vim.keymap.set('v', '<', '<gv') -- indent
vim.keymap.set('v', '>', '>gv') -- dedent
vim.keymap.set('v', 'y', 'myy`y') -- stop yank from moving the cursor
vim.keymap.set('v', 'Y', 'myY`y') -- stop yank from moving the cursor

----------------------------
-- TERMINAL ----------------
----------------------------
-- move between panes
vim.keymap.set('t', '<C-Up>', '<cmd>wincmd k<CR>')
vim.keymap.set('t', '<C-Down>', '<cmd>wincmd j<CR>')
vim.keymap.set('t', '<C-Left>', '<cmd>wincmd h<CR>')
vim.keymap.set('t', '<C-Right>', '<cmd>wincmd l<CR>')

-- resize panes
vim.keymap.set('t', '<C-S-Up>', '<cmd>resize -2<CR>')
vim.keymap.set('t', '<C-S-Down>', '<cmd>resize +2<CR>')
vim.keymap.set('t', '<C-S-Left>', '<cmd>vertical resize -2<CR>')
vim.keymap.set('t', '<C-S-Right>', '<cmd>vertical resize +2<CR>')

-- REFERENCES
-- https://github.com/ThePrimeagen/init.lua
-- https://github.com/ntk148v/neovim-config
-- https://medium.com/linux-with-michael/must-have-neovim-keymaps-51c283394070
-- https://github.com/jessarcher/dotfiles/blob/master/nvim/lua/user/keymaps.lua
