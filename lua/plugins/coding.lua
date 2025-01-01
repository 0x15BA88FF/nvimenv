return {
    {
        "saghen/blink.cmp",
        dependencies = {
            { "rafamadriz/friendly-snippets" }
        },

        version = "*",

        opts = {
            keymap = { preset = "default" },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono"
            }
        },
        opts_extend = { "sources.default" }
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
            { "nvim-treesitter/nvim-treesitter" },
            { "echasnovski/mini.icons",         opts = {} }
        },
        opts = {},
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
}
