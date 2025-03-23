return {
	{
		"nvim-flutter/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({
				widget_guides = {
					enabled = true,
				},
				root_patterns = { ".git", "pubspec.yaml" },
				closing_tags = {
					highlight = "Comment", -- highlight for the closing tag
					prefix = ">", -- character to use for close tag e.g. > Widget
					priority = 10, -- priority of virtual text in current line
					-- consider to configure this when there is a possibility of multiple virtual text items in one line
					-- see `priority` option in |:help nvim_buf_set_extmark| for more info
					enabled = true, -- set to false to disable
				},
				lsp = {
					color = { -- show the derived colours for dart variables
						enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
						background = false, -- highlight the background
						background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
						foreground = false, -- highlight the foreground
						virtual_text = true, -- show the highlight using virtual text
						virtual_text_str = "■", -- the virtual text character to highlight
					},
					dev_tools = {
						autostart = false, -- autostart devtools server if not detected
						auto_open_browser = true, -- Automatically opens devtools in the browser
					},
					settings = {
						lineLength = 120,
						completeFunctionCalls = true,
						documentation = "summary",
						showTodos = true,
						renameFilesWithClasses = "always",
						enableSnippets = true,
						updateImportsOnRename = true,
					},
				},
			})
			require("flutter-tools").setup_project({
				{
					name = "Hamoney",
					dart_define = {
						PROFILE = "prod",
					},
				},
			})
		end,
		-- https://github.com/nvim-flutter/flutter-tools.nvim?tab=readme-ov-file#usage
		keys = {
			{ "<leader>Fs", "<cmd>FlutterRun<cr>", desc = "flutter run" },
			{ "<leader>FR", "<cmd>FlutterRestart<cr>", desc = "restart" },
			{ "<leader>Fr", "<cmd>FlutterReload<cr>", desc = "reload" },
			{ "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", desc = "outline" },
			{ "<leader>Fl", "<cmd>FlutterLogToggle<cr>", desc = "log toggle" },
			{ "<leader>FL", "<cmd>FlutterLogClear<cr>", desc = "clear log" },
			{ "<leader>Fd", "<cmd>FlutterDevTools<cr>", desc = "dev tools" },
		},
	},
}
