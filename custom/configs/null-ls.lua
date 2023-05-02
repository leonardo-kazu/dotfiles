-- custom/configs/null-ls.lua
require("mason").setup()
local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettier
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
    end
  end
}

require("mason-null-ls").setup({
      ensure_installed = nil,
      automatic_installation = true,
    })
