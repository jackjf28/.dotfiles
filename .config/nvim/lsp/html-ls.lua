-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/html.lua
local blink = require("blink.cmp")

--return {
--	cmd = { "vscode-html-language-server", "--stdio", },
--	filetypes = {
--		"html",
--		"templ",
--	},
--	root_markers = {
--		"package.json",
--		"index.html",
--		".git",
--	},
--	on_attach = function (client, bufnr)
--	  print("HTML LSP attached to buffer " .. bufnr)
--	end,
--	settings = {
--		html = {
--		  format = {
--			enable = true
--		  },
--		  hover = {
--			documentation = true,
--			references = true
--		  },
--		  -- Disable slow features
--		  suggest = {
--			html5 = true,
--		  },
--		  validate = {
--			scripts = false,  -- Disable script validation (slow)
--			styles = false,   -- Disable style validation (slow)
--		  },
--		  autoClosingTags = true,
--		  completion = {
--			attributeDefaultValue = "doublequotes"
--		  }
--		},
--	},
--	init_options = {
--		provideFormatter = true,
--	},
--}
return {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html', 'templ' },
  root_markers = { 'package.json', '.git' },
  settings = {
	format = { enable = true, },
	autoClosingTags = true,
	completion = {
	  attributeDefaultValue = "doublequotes",
	},
  },
  init_options = {
    provideFormatter = true,
    embeddedLanguages = { css = true, javascript = true },
    configurationSection = { 'html', 'css', 'javascript' },
  },
}
