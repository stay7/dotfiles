return {
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
		keys = {
			{ "<C-/>", "gcc", mode = "n", remap = true, desc = "Toggle comment" },
			{ "<C-/>", "gc", mode = "v", remap = true, desc = "Toggle comment" },
		},
	},
}
