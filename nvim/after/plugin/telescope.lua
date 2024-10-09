local telescope = require('telescope')
local builtin = require('telescope.builtin')

local ignore_filetypes_list = {
    "%.jpg", "%.png", "%.webp",
    "%.pdf", "%.odt", "%.ico",
    "%.o", "%.d", "%.ini"
}

telescope.setup({
   defaults = {
      file_ignore_patterns = ignore_filetypes_list,
   }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

