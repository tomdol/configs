return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "moon",
				cache = false,
				on_colors = function(colors)
					colors.bg = "#212121"
					colors.bg_dark = "#1e2025"
					colors.bg_dark1 = "#191B20"
					colors.bg_highlight = "#2C2C38"
				end,
			})
		end,
	},
	{
		"rhysd/vim-llvm",
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"luukvbaal/statuscol.nvim",
		config = function()
			local function lnum_both(args)
				return string.format("%3d %2d", args.lnum, args.relnum)
			end
			require("statuscol").setup({
				segments = {
					{ text = { lnum_both, " " } },
				},
			})
		end,
	},
}