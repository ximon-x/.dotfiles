return {
    "folke/snacks.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    priority = 1000,
    lazy = false,

    ---@module 'snacks.nvim'
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                { section = "header" },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                { section = "startup" },
            },
        },
        input = { enabled = true },
        lazygit = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scratch = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },

    keys = {
        {
            "<leader><space>",
            function()
                Snacks.picker.smart()
            end,
            desc = "Find File",
        },
        {
            "<leader>:",
            function()
                Snacks.picker.command_history()
            end,
            desc = "Command History",
        },
        {
            "<leader>.",
            function()
                Snacks.terminal()
            end,
            desc = "Terminal",
        },
        {
            "<leader>/",
            function()
                Snacks.picker.grep()
            end,
            desc = "Grep",
        },
        {
            "<leader>%",
            function()
                Snacks.lazygit.open()
            end,
            desc = "Lazygit",
        },
        {
            "<leader>d",
            function()
                Snacks.dashboard.open()
            end,
            desc = "Dashboard",
        },
        {
            "<leader>n",
            function()
                Snacks.picker.notifications()
            end,
            desc = "Notification History",
        },
        {
            "<leader>bl",
            function()
                Snacks.picker.buffers()
            end,
            desc = "List Buffers",
        },
        {
            "<leader>bx",
            function()
                Snacks.bufdelete()
            end,
            desc = "Exit Current Buffer",
        },
        {
            "<leader>bs",
            function()
                Snacks.scratch.select()
            end,
            desc = "Select Scratch Buffer",
        },
    },
}
