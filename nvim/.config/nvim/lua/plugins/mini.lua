return {
    "echasnovski/mini.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = false,

    keys = {
        {
            "~",
            function()
                if not MiniFiles.close() then
                    MiniFiles.open()
                end
            end,
        },
    },

    config = function()
        require("mini.statusline").setup()
        require("mini.pairs").setup()
        require("mini.icons").setup()
        require("mini.diff").setup()
        require("mini.git").setup()

        -- Mini.Files
        require("mini.files").setup({
            mappings = {
                go_in_plus = "<CR>",
                go_out_plus = "~",
                synchronize = "s",
            },
            options = {
                use_as_defualt_explorer = false,
            },
        })
    end,
}
