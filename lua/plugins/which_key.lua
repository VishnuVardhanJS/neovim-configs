return {
	"folke/which-key.nvim",
	event = "VeryLazy",

	config = function()
		local wk = require("which-key")

		wk.add({
			{ "<leader>f", desc = "Find and Format" },
			{ "<leader>fs", desc = "Format Selected" },
			{ "<leader>o", desc = "Open Current Buffers" },
			{ "<leader>d", desc = "Safe Delete" },
			{ "<leader>bm", desc = "View Marked Buffers" },
			{ "<leader>c", desc = "LSP: [C]ode [A]ction" },
			{ "<leader>ca", desc = "LSP: [C]ode [A]ction" },
			{ "<leader>b", desc = "Buffers" },
			{ "<leader>s", desc = "LSP: [S]how [E]rror" },
			{ "<leader>se", desc = "LSP: [S]how [E]rror" },
		})
	end,

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
