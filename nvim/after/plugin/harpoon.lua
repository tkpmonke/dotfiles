local harpoon = require('harpoon')

harpoon.setup()


vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<S-A>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

vim.keymap.set("n", "<S-Q>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<S-W>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<S-E>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<S-R>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<S-S>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-D>", function() harpoon:list():next() end)
