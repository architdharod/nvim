return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- run ":help lspconfig-all" to see list of all the lsp names etc
        ensure_installed = { "lua_ls", "html", "jsonls", "tsserver", "rust_analyzer", "astro" },
      })
    end,
  },
  --  use the command :h vim.lsp to see all the functions
  --  use ":LspInfo" for troubleshooting
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.html.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.astro.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.rust_analyzer.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
  -- adding astro lsp, since mason-lspconfig was not working properly for astro
  "wuelnerdotexe/vim-astro",
}
