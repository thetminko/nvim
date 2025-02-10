local base = require("plugins.configs.lspconfig")
local base_on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local servers = {"tsserver", "tailwindcss", "html", "cssls", "dockerls", "prismals"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = base_on_attach,
    capabilities = capabilities
  }
end

lspconfig.gopls.setup {
  on_attach = base_on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
}


-- ESLint
lspconfig["eslint"].setup {
  capabilities = capabilities,
  on_attach = function(client)
    base_on_attach(client)
  end


  -- filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  -- root_dir = util.root_pattern(".eslintrc.js", ".eslintrc.json", ".eslintrc", ".eslintrc.yml", ".eslintrc.yaml", "package.json"),


  -- Run ESLintFixAll on save

}
