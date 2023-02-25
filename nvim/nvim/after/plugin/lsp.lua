local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

local function on_attach()
   vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
   vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
   vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, { buffer = 0 })
   vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { buffer = 0 })
end

local languages = { "clangd", "tsserver", "html", "cssls", "pyright", "gopls" }

for _, language in pairs(languages) do
   require("lspconfig")[language].setup({
      on_attach = on_attach,
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
   })
end

require("lspconfig").lua_ls.setup({
   on_attach = on_attach,
   capabilities = require("cmp_nvim_lsp").default_capabilities(),
   settings = {
      Lua = {
         diagnostics = {
            globals = {"vim"},
         },
      },
   },
})
