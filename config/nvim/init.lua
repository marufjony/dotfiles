require("keymaps")
require("options")
require("plugins.lazy")
require("plugins.keymaps")
require("plugins.options")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.zenmode")
require("plugins.alpha-nvim")
require("plugins.obsidian")
require("ObsTemplate")

local obs_template = require('ObsTemplate')

-- Create a command to generate the note
vim.api.nvim_create_user_command('YT', function()
    obs_template.create_youtube_note()
end, { nargs = 0 })
