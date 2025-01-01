return {
    {
        "echasnovski/mini.nvim",
        config = function()
            local statusline = require "mini.statusline"
            statusline.setup { use_icons = true }
        end
    },
    {
        "folke/snacks.nvim",
        opts = {
            dashboard = {}
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
