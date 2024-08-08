return {
	"Mofiqul/vscode.nvim",
	lazy = false,
	opts = {
		transparent = true,
	},
	config = function()
		vim.cmd.colorscheme("vscode")
		vim.o.background = "dark"
	end,
}
