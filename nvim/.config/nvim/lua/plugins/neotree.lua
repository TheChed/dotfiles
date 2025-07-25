return {

    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        filesystem = {
            filtered_items = {
                visible = false, -- when true, they will just be displayed differently than normal items
                hide_dotfiles = false,
                hide_by_name = {
                    ".git",
                    ".Xauthority"
                },
            },
        },
    },
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}),
}
