---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },

  i = {
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
    ["<C-f>"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle file explorer" },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<C-g"] =  { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find current buffer" },
    ["<C-q>"] = {  
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
  },
    ["<C-a>"] = { 
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action", 
    },
    ["<C-1>"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },
    -- ["K"] = { "<Esc>:m .+1<CR>==gi", "Move line up" },
    -- ["J"] = { "<Esc>:m .-2<CR>==gi", "Move line down" },
  },

  v = { 
    ["K"] = { ":move '<-2<CR>gv=gv", "Move line up" },
    ["J"] = { ":move '>+1<CR>gv=gv", "Move line down" },
  }
}

return M
