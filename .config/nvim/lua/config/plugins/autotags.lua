return {
  {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    ft = { 'html', 'templ', 'xml', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = true,
        },
      })
    end,
  },
}
