local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- override default key mappings
keymap.set("n", "<C-i>", "<C-o>")
keymap.set("n", "<C-o>", "<C-i>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><", opts)
keymap.set("n", "<C-w><right>", "<C-w>>", opts)
keymap.set("n", "<C-w><up>", "<C-w>+", opts)
keymap.set("n", "<C-w><down>", "<C-w>-", opts)

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- quit
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>/", builtin.live_grep, { desc = "live grep" })
keymap.set("n", "<leader> ", builtin.find_files, { desc = "find files" })
keymap.set("n", "<leader>fg", builtin.git_files, { desc = "find git" })
keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "find lsp document symbols" })
keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "diagnostics" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find buffers" })
keymap.set("n", "<leader>f/", builtin.grep_string, { desc = "grep" })

-- File-tree mappings
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })

-- diagnostics
keymap.set("n", "<F2>", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<S-F2>", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
