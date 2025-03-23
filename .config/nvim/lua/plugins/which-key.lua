return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		preset = "helix",
		spec = {
			{ "<leader>F", group = "Flutter dev tools" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "harpoon" },
			{ "<leader>u", group = "ui" },
			{ "<leader>f", group = "find" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
