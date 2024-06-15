return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "omnisharp",
        "typescript-language-server",
        "svelte-language-server",
        "eslint-lsp",
      },
    },
  },
}
