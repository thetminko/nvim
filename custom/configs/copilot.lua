local copilot = require("copilot")

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
