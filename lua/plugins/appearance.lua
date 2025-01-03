return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            { "echasnovski/mini.icons", opts = {} },
        }
    },
    {
        "folke/snacks.nvim",
        opts = {
            dashboard = {},
            zen = {}
        }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        }
    }
}
