local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local options = {
    -- debug = true,

    sources = {
        -- b.formatting.prettierd,

        -- Rust
        b.formatting.rustfmt.with { extra_args = { "--edition 2021" } },

        -- Lua
        -- b.formatting.stylua,
        -- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

        -- Shell
        -- b.formatting.shfmt,
        -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
    },

    -- format on save
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
        end
    end,
}

null_ls.setup(options)
