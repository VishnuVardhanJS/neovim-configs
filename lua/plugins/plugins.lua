return {
	{
		"sainnhe/everforest", --default theme for neovim
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			-- vim.g.everforest_enable_italic = true
			vim.g.everforest_background = "hard"
			vim.cmd.colorscheme("everforest")
		end,
	},
	{
		"mrquantumcodes/bufferchad.nvim",
		config = function()
			_G.session_dir = vim.fn.stdpath("data") .. "/bufferchad_sessions"
			require("bufferchad").setup({
				mapping = "<leader>o",
				style = "default", -- default, fuzzy, telescope
				close_mapping = "<Esc>", -- only for the default style window
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				icons_enabled = false,
				sections = {
					lualine_x = {}, -- Left empty or add other items like 'location'
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
