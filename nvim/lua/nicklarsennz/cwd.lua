-- this is so I can run `nvim path/to/repo` and have telesope use that as the cwd instead of $PWD
-- adapted from: https://www.reddit.com/r/neovim/comments/t26htu/comment/hynjpru/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
-- at least in nix, nvim has other args before the one the user types in
-- this won't work for args supplied after the path

local args = vim.v.argv
local last_arg = args[#args]

-- print(last_arg)
if vim.fn.isdirectory(last_arg) == 1 then
  vim.api.nvim_set_current_dir(last_arg)
end
