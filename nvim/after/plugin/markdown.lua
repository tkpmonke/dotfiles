md = require('render-markdown')

md.enable()
md.setup({
   quote = {
      enabled = true,
      icon = '▋'
   },

   bullet = {
      enabled = true,
      icons = { '●', '○', '◆', '◇' },
      left_pad = 1,
      right_pad = 0,
   },
})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>md", ":RenderMarkdown toggle<CR>") 
