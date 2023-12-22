-- vim.opt.guicursor = ""

vim.opt.wrap = false
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"


-- taken from ntk148v/neovim-config

vim.cmd([[ filetype plugin indent on ]]) -- not sure what this does

vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.matchpairs = {"(:)", "{:}", "[:]", "<:>"} -- use % to jump between openeing and closing character
vim.opt.syntax = "enable"

-- indentation
local indent = 2
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = indent -- number of spaces for each indentation
vim.opt.smartindent = true
vim.opt.softtabstop = indent -- make backspace remove indents, not just single spaces
vim.opt.tabstop = indent -- indent when pressing tab
vim.opt.shiftround = true -- use multiple of shiftwidth when indenting with  "<" and ">"... might be missing a key binding?

-- search
vim.opt.hlsearch = true -- highlight all matches
vim.opt.incsearch = true -- update search highlighting as you type
vim.opt.ignorecase = true -- trying this out, but maybe I won't like it
vim.opt.smartcase = true -- search case-insensitive unless the search string contains an upper case character. What about when you want case sensitive for lower case, though?
vim.opt.wildignore = vim.opt.wildignore + {"*/.git/*"} -- not sure where this is used. also see: https://www.reddit.com/r/vim/comments/qdp4pa/wildignore_from_gitignore/
vim.opt.wildmenu = true -- something about tab completion for files/buffers working like bash?

-- ui
vim.opt.cursorline = true -- gently highlight the current line
vim.opt.laststatus = 2 -- always show the status line
vim.opt.lazyredraw = true -- don't update the display while executing macros?
vim.opt.list = true -- show indicators for tabs, trailing spaces, non-wrapped long lines, etc...
vim.opt.listchars = {
    tab = "┊ ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "×"
}
vim.opt.cmdheight = 0 -- hide the command line. It will use the status line (saves space)
vim.opt.showmode = false -- hide the -- INSERT -- line, though it was already gone with the cmdheight = 0
vim.opt.termguicolors = true -- 24-bit RGB colours

vim.opt.mouse = "a" -- enable mouse for all modes
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- relative numbers (makes it easier to jump to lines)
vim.opt.scrolloff = 8 -- minimum number of lines above or below the cursor
vim.opt.sidescrolloff = 8 -- minimum number of columns before or after the cursor
vim.opt.signcolumn = "yes:1" -- a column for displaying indicators
-- vim.opt.splitbelow = true -- not sure what this is for
-- vim.opt.splitright = true -- not sure what this is for

-- backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- autocomplete
vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.shortmess = vim.opt.shortmess + {c = true} -- not really sure what this does. Hides some messages

-- history
vim.opt.history = 100 -- remember 100 lines of history

-- performance
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (milliseconds)?
vim.opt.ttimeoutlen = 10 -- time to wait for escape sequence (normally short), see https://vi.stackexchange.com/a/24938
vim.opt.updatetime = 100

-- undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo" -- mkdir -p $HOME/.local/share/nvim/undo
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- fold
vim.opt.foldenable = true
-- vim.opt.foldmethod = "marker" -- I think ufo needs this unset
vim.opt.foldlevel = 99
vim.opt.foldcolumn = '1'

vim.cmd('colorscheme rose-pine')
