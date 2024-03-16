return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/playground" },
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "c_sharp", "typescript" },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
      },
    })
  end
}
