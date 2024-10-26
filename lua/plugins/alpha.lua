return {
	"goolord/alpha-nvim",
	dependencies = {
	  "nvim-tree/nvim-web-devicons",
	  "nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = function()
	  local alpha = require "alpha"
	  local dashboard = require "alpha.themes.dashboard"
  
	  dashboard.section.header.val = {
[[ _____ _   _ _____ _  _____ _   _  ____  ___  _____ ____ ___   ___  _]],
[[|_   _| | | | ____| |/ /_ _| \ | |/ ___|/ _ \|  ___/ ___/ _ \ / _ \| |]],
[[  | | | |_| |  _| | ' / | ||  \| | |  _| | | | |_ | |  | | | | | | | |]],
[[  | | |  _  | |___| . \ | || |\  | |_| | |_| |  _|| |__| |_| | |_| | |___]],
[[  |_| |_| |_|_____|_|\_\___|_| \_|\____|\___/|_|   \____\___/ \___/|_____|]],
[[                                          666666          ]],
[[                                         666666666        ]],
[[                                         6666666666       ]],
[[                                          666666666       ]],
[[                                           66666666       ]],
[[                                       666666666666666    ]],
[[                                     6666666666666666666  ]],
[[                                  66666666666666666666666 ]],
[[                                6666666666666666666666666 ]],
[[                            666666666666666666666666666666]],
[[                         666666666666 66666666666666 66666]],
[[                      6666666666     666666666666666  6666]],
[[                    6666666         666666666666666       ]],
[[                    6666           666666666666666        ]],
[[                                  6666666666666666        ]],
[[                                 666666666666666666       ]],
[[                               6666666666666666666666     ]],
[[                             66666666666666666666666666   ]],
[[                            6666666666666666666666666666  ]],
[[                           66666666666666    6666666666666]],
[[                          666666666666        666666666666]],
[[                         666666666666           6666666666]],
[[                        6666666666            6666666666  ]],
[[                       666666666            6666666666    ]],
[[                      666666666           666666666       ]],
[[                      6666666             666666666       ]],
[[                     666666                6666666666     ]],
[[                    6666666                    6666666    ]],
[[                   66666666                               ]],
[[                  666666                                  ]],
[[                  66666                                   ]],
	  }
  
	  dashboard.section.buttons.val = {
		dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
	  }
  
	  -- Set footer
	  local footer = [[
		
		I'm cool and you are not.
	  ]]
  
	  dashboard.section.footer.val = footer
	  dashboard.section.footer.type = "text"
	  dashboard.section.footer.opts = {
		position = "center",
		hl = "Number",
	  }
  
	  -- Keymaps
	  vim.keymap.set("n", "<leader>a", ":Alpha<CR>", { desc = "Goto Greeter Screen" })
  
	  alpha.setup(dashboard.config)
	end,
  }