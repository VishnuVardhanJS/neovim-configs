return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"javascript", "typescript", "tsx", "json", "html", "css", -- Web / React
            "java", "python", -- Backend
            "lua", "vim", "vimdoc", "bash", "markdown", "markdown_inline" -- General
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true
            }
        })
    end
}}
