require('telescope').setup{
  extensions = {
    file_browser = {
      hijack_netrw = true, -- use telescope when opening nvim on a directory
      -- path = "%:p:h",
      -- cwd_to_path = true, -- use the path of the buffer (should let me nvim repo directories and browse from there instead of $PWD)
    },
  },
  defaults = {
    -- Default configuration for telescope goes here:
    sorting_strategy = "ascending",
    layout_config = {
      width = 0.95,
      height = 0.95,
      prompt_position = "top",
      anchor = "N",
    },
    mappings = {
      n = {
        ['<C-d>'] = require('telescope.actions').delete_buffer
      },
      i = {
        ["<C-h>"] = "which_key",
        ['<C-d>'] = require('telescope.actions').delete_buffer -- this won't close the current buffer, even though it disappears from the list: https://github.com/nvim-telescope/telescope.nvim/issues/2643
      }
    }
  },
}

-- see also: https://github.com/nvim-telescope/telescope.nvim/issues/621#issuecomment-792378132


-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
