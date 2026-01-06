return { -- 1. MASON & LSPCONFIG
{
    "williamboman/mason-lspconfig.nvim",
    dependencies = {{
        "williamboman/mason.nvim",
        cmd = "Mason",
        config = true
    }, "neovim/nvim-lspconfig"},
    opts = {
        ensure_installed = {"lua_ls", "rust_analyzer", "pyright"}
    }

}, -- 2. NVIM-JAVA
{
    "nvim-java/nvim-java",
    config = function()
        require('java').setup()
        vim.lsp.enable('jdtls')
    end
}}
