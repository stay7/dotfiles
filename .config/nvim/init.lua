require("config.lazy")
require("config.keymaps")
require("config.options")

-- File-tree mappings
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })
