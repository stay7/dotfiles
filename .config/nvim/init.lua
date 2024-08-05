require("config.lazy")

-- File-tree mappings
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc='git' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>f/', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
