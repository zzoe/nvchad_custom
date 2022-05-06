local M = {}

M.options = {
    lspconfig = {
        setup_lspconf = "custom.plugins.lspconfig",
    },
}

M.user = {
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null_ls"
        end,
    },

    ["hrsh7th/cmp-nvim-lsp"] = {
        after = "LuaSnip",
    },
}

M.override = { }

M.remove = {
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lua",
}

return M
