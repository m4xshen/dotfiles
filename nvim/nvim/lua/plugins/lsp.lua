vim.keymap.set(
   "n",
   "<Leader>e",
   vim.diagnostic.open_float,
   { noremap = true, silent = true }
)
vim.keymap.set(
   "n",
   "<Leader>a",
   vim.lsp.buf.code_action,
   { noremap = true, silent = true }
)

vim.keymap.set("n", "<space>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

vim.api.nvim_create_autocmd("LspAttach", {
   group = vim.api.nvim_create_augroup("UserLspConfig", {}),
   callback = function(ev)
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      local opts = { buffer = ev.buf }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      -- vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
   end,
})

local languages = {
   "clangd",
   "html",
   "cssls",
   "tsserver",
   "emmet_ls",
   "eslint",
   "pyright",
   "gopls",
   "texlab",
}

return {
   {
      "neovim/nvim-lspconfig",
      dependencies = { "hrsh7th/cmp-nvim-lsp" },
      config = function()
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {
               Lua = {
                  diagnostics = {
                     globals = { "vim", "describe", "it" },
                  },
               },
            },
         })

         require("lspconfig").tailwindcss.setup({
            on_attach = function()
               require("tailwindcss-colors").buf_attach(0)
            end,
         })

         for _, language in pairs(languages) do
            require("lspconfig")[language].setup({
               capabilities = capabilities,
            })
         end

         vim.keymap.set(
            "n",
            "<Leader>fa",
            ":EslintFixAll<CR>",
            { noremap = true, silent = true }
         )

         vim.lsp.handlers["textDocument/publishDiagnostics"] =
            vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
               virtual_text = false,
            })
      end,
   },
   {
      "williamboman/mason.nvim",
      opts = {},
   },
   {
      "williamboman/mason-lspconfig.nvim",
      opts = {
         ensure_installed = {
            "lua_ls",
            "clangd",
            "html",
            "cssls",
            "tsserver",
            "eslint",
            "tailwindcss",
            "pyright",
            "gopls",
         },
      },
   },
}
