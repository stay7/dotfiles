vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "120"

vim.g.lazyvim_prettier_needs_config = false

vim.diagnostic.config({ virtual_lines = true })

vim.cmd([[
    cabbrev ㅈ w
    cabbrev ㅂ q
    cabbrev ㅈㅂ wq
]])

local function im_select_english()
	vim.fn.system("fcitx5-remote -s keyboard-us")
end

vim.keymap.set("n", "<Esc>", function()
	im_select_english()
	return "<Esc>"
end, { expr = true, silent = true })
