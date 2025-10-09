print("advent of neovim")

require("config.lazy")

-- require("config")

vim.lsp.enable({
  "lua_ls",
  "yamlls",
  "templ",
  "html",
  "htmx",
  "css_variables",
  "cssls",
  "dockerls",
  "jsonls",
  "tailwindcss",
  "yamlls"
})

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--local function setup_lsp()
--	local lsp_dir = vim.fn.stdpath("config") .. "/lsp"
--	local lsp_servers = {}
--
--	if vim.fn.isdirectory(lsp_dir) == 1 then
--		for _, file in ipairs(vim.fn.readdir(lsp_dir)) do
--			if file:match("%.lua$") and file ~= "init.lua" then
--				local server_name = file:gsub("%.lua$", "")
--				table.insert(lsp_servers, server_name)
--			end
--		end
--	end
--
--	vim.lsp.enable(lsp_servers)
--end
--
--setup_lsp()

--vim.api.nvim_create_autocmd("TermOpen", {
--  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
--  callback = function()
--    vim.opt.number = false
--    vim.opt.relativenumber = false
--  end,
--})

--local job_id = 0
--vim.keymap.set("n", "<space>st", function()
--  vim.cmd.vnew()
--  vim.cmd.term()
--  vim.cmd.wincmd("J")
--  vim.api.nvim_win_set_height(0, 5)
--
--  job_id = vim.bo.channel
--end)
