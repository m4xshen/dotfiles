vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.diagnostic.config({
   float = { border = "rounded" },
})

vim.api.nvim_create_autocmd("LspAttach", {
   group = vim.api.nvim_create_augroup("UserLspConfig", {}),
   callback = function(ev)
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      local opts = { buffer = ev.buf }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set(
         "n",
         "<Leader>a",
         vim.lsp.buf.code_action,
         { noremap = true, silent = true }
      )
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
      "themaxmarchuk/tailwindcss-colors.nvim",
      module = "tailwindcss-colors",
      config = function()
         require("tailwindcss-colors").setup()
      end,
   },
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
            "<Leader>e",
            ":EslintFixAll<CR>",
            { noremap = true, silent = true }
         )

         vim.lsp.handlers["textDocument/publishDiagnostics"] =
            vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
               virtual_text = false,
            })

         local symbols =
            { Error = "", Warn = "", Info = "", Hint = "" }
         for name, icon in pairs(symbols) do
            local hl = "DiagnosticSign" .. name
            vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
         end

         local hl_groups = {
            "DiagnosticUnderlineError",
            "DiagnosticUnderlineWarn",
            "DiagnosticUnderlineInfo",
            "DiagnosticUnderlineHint",
         }
         for _, hl in ipairs(hl_groups) do
            vim.cmd.highlight(hl .. " gui=undercurl")
         end
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
