return {
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/Workspaces/Personal/*",
        "~/Workspaces/*Tech/g*sg/apps/*",
        "~/Workspaces/*Tech/g*sg/devops/*",
        "~/configs/*",
      },
      last_session_on_startup = false,
      dashboard_mode = true,
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
  },
}
