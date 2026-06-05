require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
  "asm_lsp",
}
vim.lsp.enable(servers)
