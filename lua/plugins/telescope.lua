return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap for project.lua
      {
        "<leader>pd",
        "<cmd>Telescope neovim-project discover<cr>",
        desc = "Discover project",
      },
      {
        "<leader>ph",
        "<cmd>Telescope neovim-project history<cr>",
        desc = "Project history",
      },
      {
        "<leader>pr",
        "<cmd>NeovimProjectLoadRecent<cr>",
        desc = "Recent projects",
      },
    },
  },
}
