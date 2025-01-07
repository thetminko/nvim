return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab><Tab>",
          next = "<Tab>1",
          prev = "<Tab>2",
        },
      },
      panel = { enabled = true },
      filetypes = {
        javascript = true,
        typescript = true,
        typescriptreact = true,
        javascriptreact = true,
        lua = true,
        go = true,
        rust = true,
        java = true,
        sql = true,
        shell = true,
        vim = true,
        yaml = true,
        dockerfile = true,
      },
    },
  },
}
