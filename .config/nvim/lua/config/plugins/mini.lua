-- lua/custom/plugins/mini.lua
return {
	{
		'echasnovski/mini.nvim',
		is_enabled = true,
		config = function()
			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = true }
		end
	}
}
