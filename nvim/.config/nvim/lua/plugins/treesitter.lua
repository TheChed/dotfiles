return{
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

    config = function()
        local config = require("nvim-treesitter.configs")
            config.setup({
            ensure_installed = { "cpp","c", "lua", "vim", "vimdoc", "regex",  "javascript", "html" },
            highlight = { enable = true },
            indent = { enable = true },
        })
end
}
