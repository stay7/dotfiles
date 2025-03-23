return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		keys = {
			{ "<leader>uc", ":Themery<CR>", desc = "colorscheme" },
		},
		config = function()
			require("themery").setup({
				themes = {
					"default",
					"tokyonight-moon",
					"tokyonight-storm",
					"tokyonight-night",
					"tokyonight-day",
					"catppuccin-latte",
					"catppuccin-frappe",
					"catppuccin-macchiato",
					"catppuccin-mocha",
					"kanagawa-wave",
					"kanagawa-dragon",
					"kanagawa-lotus",
					"nightfox",
					"terafox",
					"carbonfox",
					"nordfox",
					"duskfox",
					"dawnfox",
				},
				livePreview = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
	},
}
