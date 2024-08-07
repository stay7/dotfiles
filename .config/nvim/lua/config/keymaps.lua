-- override default key mappings
vim.keymap.set("n", "<C-i>", "<C-o>")
vim.keymap.set("n", "<C-o>", "<C-i>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.git_files, { desc = "find git" })
vim.keymap.set("n", "<leader> ", builtin.find_files, { desc = "find files" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "find lsp document symbols" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "diagnostics" })
vim.keymap.set("n", "<leader>f/", builtin.grep_string, { desc = "grep" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })

-- File-tree mappings
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })
