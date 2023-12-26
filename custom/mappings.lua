---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["srn"] = { ":set relativenumber", "tog"}
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
    ["<C-K>"] = { "<Esc>:m .-2<CR>==gi", "Move line up" },
    ["<C-J>"] = { "<Esc>:m .+1<CR>==gi", "Move line down" },
  },

  v = { 
    ["K"] = { ":move '<-2<CR>gv=gv", "Move line up" },
    ["J"] = { ":move '>+1<CR>gv=gv", "Move line down" },
  }
}

-- GoLang debugger mappings
M.dap = {
  plugin = true,
  n = { 
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
   ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test"
    }
  }
}

-- GoLang autogenerate json to structs 
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
