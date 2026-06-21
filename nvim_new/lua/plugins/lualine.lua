
vim.pack.add({'https://github.com/nvim-lualine/lualine.nvim'})

require("lualine").setup({
    options = {
        theme = "dracula",
        component_separators = "|",
        section_separators = "",
    },
    sections = {
        lualine_c = {
            { "filename" },
            {
                symbols = {
                    modified = " ●", -- Text to show when the buffer is modified
                    alternate_file = "#", -- Text to show to identify the alternate file
                    directory = "", -- Text to show when the buffer is a directory
                },
            },
        },
    },
})
