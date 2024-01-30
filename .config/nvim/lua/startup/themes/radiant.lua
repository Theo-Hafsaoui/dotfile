local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 0,
        content = {
						"........ ",
						"..,;;;;,;;;;;;,.",
						"..,...         ..,,.",
						" ",
						"..",
						":;",
						".do..",
						".               ...lOkxc...               .",
						"....            .,,,.:xloOx:.,,..            ....",
						".;.            .,;.  .dl..;oo.  .;,.            .;.",
						",c.            .:.  .:dc.   .cd;.  ,:.            .:.",
						".c,            .;;.,coc,.;:::,.,col;.:;.            ;c.",
						",l.      ...,;:oxol:,. .l:..,cl. .,:ldxl:;....      .l,",
						",c.      ...,::oxdl:.. .l:..,cl. ..:ldxo::,...      .l, ",
						".c,            .::.;llc..;::c;..col;,:;             ;c.",
						",:.            .;.  .:d:.   .:d:.  ,;.            .c,",
						".;.            .,,.  .dl...lo.  .;,.            .;. ",
						"....            .,,..:xllOx:.,,,.            ....",
						".               ...lOkkl...               .",
						".do,.",
						"::",
						"..",
						" ",
						"...                 ...",
						"..,...         ...,..",
						"..,;;;;,,,;;;;,..",
						".........",
				},
				highlight = "Number",
				default_color = "#cc241d",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { "Search file", "Telescope find_files", "<leader>ff" },
            { " Search by Word", "Telescope live_grep", "<leader>lg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
        },
        highlight = "String",
        default_color = "#FF0000", -- a hex color that gets used if you don't specify `highlight`
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "startup.nvim" },
        highlight = "Number",
        default_color = "#f4f4f4f4",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#282828",
        yellow = "#cc241d",
        folded_section = "#cc241d",
    },
    parts = { "header", "body", "footer" },
}
return settings