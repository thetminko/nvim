local copilot = require("copilot")

vim.g.copilot_assume_mapped = true
vim.g.copilot_proxy_strict_ssl = false

copilot.setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<Tab><Tab>",
      next = "<Tab>1",
      prev = "<Tab>2",
    }
  }
})
