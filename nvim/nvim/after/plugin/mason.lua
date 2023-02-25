require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = { "lua_ls", "clangd", "tsserver", "html", "cssls",
      "pyright", "gopls" }
})
