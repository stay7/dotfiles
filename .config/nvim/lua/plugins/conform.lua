return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			json = { "prettier" },
			yaml = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			javascript = { "prettier" },
			typescriptreact = { "prettier" },
			markdown = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
