return {
	"ellisonleao/gruvbox.nvim",
	priority=1000,
	config = function()
		-- load colorscheme here
		vim.o.background = "dark"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
