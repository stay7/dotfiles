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
vim.keymap.set("n", "<leader>fr", builtin.git_files, { desc = "find git" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "find lsp document symbols" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "diagnostics" })
vim.keymap.set("n", "<leader>f/", builtin.grep_string, { desc = "grep" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
