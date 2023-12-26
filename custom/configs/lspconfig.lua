local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local servers = {"tsserver", "tailwindcss", "eslint", "html", "cssls", "dockerls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

lspconfig["prismals"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    prisma = {
      prismaFmtBinPath = "/usr/local/bin/"
    }
  }
}
