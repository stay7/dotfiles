return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			json = { "prettier", lsp_fallback = true },
			yaml = { "prettier", lsp_fallback = true },
			html = { "prettier", lsp_fallback = true },
			css = { "prettier", lsp_fallback = true },
			kotlin = { "ktlint" },
			javascript = { "prettier", lsp_fallback = true },
			typescript = { "prettier", lsp_fallback = true },
			typescriptreact = { "prettier", lsp_fallback = true },
			markdown = { "prettier", lsp_fallback = true },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
