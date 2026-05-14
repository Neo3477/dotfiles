require("markview").setup({
    markdown = {
        headings = {
            enable = true,
            shift_width = 1,

            heading_1 = {
                style = "icon",
                hl = "MarkviewHeading1",
            },
            heading_2 = {
                style = "icon",
                hl = "MarkviewHeading2",
                sign = "󰌕 ",
                sign_hl = "MarkviewHeading2Sign",
                icon = "󰼏  ",
                icon_hl = "MarkviewHeading2",
            },
            heading_3 = {
                style = "label",
                align = "center",
                hl = "MarkviewHeading3",
                corner_left = "",
                corner_left_hl = "MarkviewHeading3Sign",
                padding_left = " ",
                padding_right = " ",
                corner_right = "",
                corner_right_hl = "MarkviewHeading3Sign",
                sign = "󰌕 ",
                sign_hl = "MarkviewHeading3Sign",
                icon = "",
                icon_hl = "MarkviewHeading3",
            },
            heading_4 = {},
            heading_5 = {},
            heading_6 = {},

            setext_1 = {
                style = "simple",
                hl = "MarkviewHeading1",
            },
            setext_2 = {
                style = "decorated",
                sign = "󰌕 ",
                sign_hl = "MarkviewHeading2Sign",
                icon = "  ",
                icon_hl = "MarkviewHeading2",
                border = "▂",
                border_hl = "MarkviewHeading2",
            },
        },
    },
})
