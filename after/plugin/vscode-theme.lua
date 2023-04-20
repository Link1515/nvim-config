require('vscode').setup({
    style = 'dark',

    italic_comments = true,

    color_overrides = {
        vscLineNumber = "#AAAAAA",
        vscCursorDark = "#6E4040",
        vscCursorDarkDark = "#0E1609",
        vscSearchCurrent = "#605C26"
    }
})

require('vscode').load()
