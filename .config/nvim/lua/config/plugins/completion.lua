return {
  {
    'saghen/blink.cmp',
    dependencies = {
	  'rafamadriz/friendly-snippets',
	},

    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'normal'
      },
	  sources = {
		default = {'lsp', 'path', 'snippets', 'buffer' },
		providers = {
		  lsp = {
			timeout_ms = 150,
			min_keyword_length = 1,
		  },
		},
	  },
	  completion = {
		accept = {
		  auto_brackets = {
			enabled = true,
		  },
		},
		menu = {
		  draw = {
			treesitter = { 'lsp' },
		  },
		},
		trigger = {
		  show_on_x_blocked_trigger_characters = {},
		  show_on_insert_on_trigger_character = true,
		  show_on_keyword = true,
		},
		list = {
		  max_items = 200
		},

	  },
      signature = { enabled = true },
	  cmdline = {
		enabled = true,
		keymap = { preset = 'cmdline' },
		sources = { 'buffer', 'cmdline' },
		completion = {
		  trigger = {
			show_on_blocked_trigger_characters = {},
			show_on_x_blocked_trigger_characters = {},
		  },
		  list = {
			selection = {
			  -- When `true`, will automatically select the first item in the completion list
			  preselect = true,
			  -- When `true`, inserts the completion item automatically when selecting it
			  auto_insert = true,
			},
		  },
		  -- Whether to automatically show the window when new completion items are available
		  -- Default is false for cmdline, true for cmdwin (command-line window)
		  menu = { auto_show = true },
		  -- Displays a preview of the selected item on the current line
		  ghost_text = { enabled = true },
		}
	  },
    },
  },
}
