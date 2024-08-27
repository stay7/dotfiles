return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
	end,
	keys = {
		{ "<leader>E", "<cmd>NvimTreeFindFile<cr>", desc = "open current Buffer" },
	},
}
