return ({
    'stevearc/oil.nvim',
    opts = {},
    lazy = false,
    config = function()
        require("oil").setup({
            watch_for_changes = true,
            view_options = {
                show_hidden = true,
                is_hidden_file = function(name, bufnr)
                    local m = name:match("^%.")
                    return m ~= nil
                end
            }
        })

    end
})
