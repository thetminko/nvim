-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("cmp").setup({
  formatting = { format = require("tailwindcss-colorizer-cmp").formatter },
})
