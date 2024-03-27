return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["a"] = {
            "add",
            -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
            -- some commands may take optional config options, see `:h neo-tree-mappings` for details
            config = {
              show_path = "absolute", -- "none", "relative", "absolute"
            },
          },
          ["A"] = {
            "add_directory",
            config = {
              show_path = "absolute",
            },
          },
          ["c"] = {
            "copy",
            config = {
              show_path = "absolute",
            },
          },
          ["m"] = {
            "move",
            config = {
              show_path = "absolute",
            },
          },
        },
      },
    },
  },
}
