return {
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				dependencies = { "rafamadriz/friendly-snippets" },
			},
		},

		-- use a release tag to download pre-built binaries
		version = "1.*",

		opts = {
			keymap = {
				snippets = {
					preset = "luasnip",
				},
				preset = "default",
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<C-u>"] = { "scroll_documentation_up", "fallback" },
				["<C-d>"] = { "scroll_documentation_down", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = {
					function(cmp)
						if cmp.snippet_active() then
							return cmp.accept()
						else
							local has_words_before = function()
								local col = vim.api.nvim_win_get_cursor(0)[2]
								if col == 0 then
									return false
								end
								local line = vim.api.nvim_get_current_line()
								return line:sub(col, col):match("%s") == nil
							end

							return cmp.select_next({
								auto_insert = has_words_before(),
							})
						end
					end,
					"snippet_forward",
					"fallback",
				},
				["<S-Tab>"] = {
					function(cmp)
						if cmp.snippet_active() then
							return cmp.snippet_backward()
						else
							return cmp.select_prev()
						end
					end,
					"fallback",
				},
			},

			appearance = {

				nerd_font_variant = "mono",
			},

			completion = {
				accept = {
					auto_brackets = {
						enabled = true,
					},
				},
				menu = {
					direction_priority = { "s", "n" },
					border = "rounded",
					winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
					draw = {
						padding = 2,
						gap = 1,
						treesitter = { "lsp" },
						columns = {
							{ "kind_icon" },
							{
								"label",
								"label_description",
								gap = 1,
							},
							{ "kind" },
						},
					},
				},
				documentation = {
					auto_show = false,
				},
				ghost_text = {
					enabled = false,
				},
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = {
				implementation = "prefer_rust_with_warning",
			},
		},
		opts_extend = { "sources.default" },
	},
}
