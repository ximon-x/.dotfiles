return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },

    {
        "wakatime/vim-wakatime",
        lazy = false,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            icons = { mappings = false },
        },
    },

    {

        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        opts = {},
        keys = {
            {
                "-",
                "<cmd>Oil<CR>",
                desc = "Oil Explore",
            },
        },
    },

    {
        "f-person/auto-dark-mode.nvim",
        opts = {
            set_dark_mode = function()
                vim.api.nvim_set_option_value("background", "dark", {})
                vim.cmd("colorscheme github_dark_default")
            end,
            set_light_mode = function()
                vim.api.nvim_set_option_value("background", "light", {})
                vim.cmd("colorscheme github_light_default")
            end,
        },
    },
}
