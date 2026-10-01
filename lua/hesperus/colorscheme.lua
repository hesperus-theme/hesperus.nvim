local p = {
    c0 = "#dfe4f2",
    c1 = "#171c26",
    c2 = "#171c26",
    c3 = "#dfe4f2",
    c4 = "#797c8c",
    c5 = "#a60f2b",
    c6 = "#b4b6d9",
    c7 = "#b39c8c",
    c8 = "#80b2d2",
    c9 = "#b7add9",
    c10 = "#c7d7e8",
    c11 = "#e9ecfd",
    c12 = "#4c5059",
    c13 = "#730d1f",
    c14 = "#707287",
    c15 = "#755443",
    c16 = "#369adb",
    c17 = "#997ebf",
    c18 = "#9ab6ce",
    c19 = "#a6adc8",
    c20 = "#1f2533",
    c21 = "#252b3a",
    c22 = "#2e3547",
    c23 = "#566580"
}

local M = {}

function M.pick()
    local colorscheme = {}

    colorscheme.editorBackground = p.c1
    colorscheme.sidebarBackground = p.c21
    colorscheme.popupBackground = p.c22
    colorscheme.floatingWindowBackground = p.c20
    colorscheme.menuOptionBackground = p.c22

    colorscheme.mainText = p.c0
    colorscheme.emphasisText = p.c16
    colorscheme.commandText = p.c8
    colorscheme.inactiveText = p.c22
    colorscheme.disabledText = p.c22
    colorscheme.lineNumberText = p.c8
    colorscheme.currentLineNumber = p.c0
    colorscheme.selectedText = p.c1
    colorscheme.inactiveSelectionText = p.c22

    colorscheme.windowBorder = p.c22
    colorscheme.focusedBorder = p.c8
    colorscheme.emphasizedBorder = p.c6

    colorscheme.syntaxError = p.c5
    colorscheme.syntaxFunction = p.c9
    colorscheme.warningText = p.c7
    colorscheme.syntaxKeyword = p.c16
    colorscheme.linkText = p.c8
    colorscheme.stringText = p.c8
    colorscheme.warningEmphasis = p.c7
    colorscheme.successText = p.c18
    colorscheme.errorText = p.c8
    colorscheme.specialKeyword = p.c17
    colorscheme.commentText = p.c23
    colorscheme.syntaxOperator = p.c8
    colorscheme.foregroundEmphasis = p.c7
    colorscheme.terminalGray = p.c19

    colorscheme.terminal = {
        black = p.c4,
        red = p.c5,
        green = p.c6,
        yellow = p.c7,
        blue = p.c8,
        magenta = p.c9,
        cyan = p.c10,
        white = p.c11,

        bright_black = p.c12,
        bright_red = p.c13,
        bright_green = p.c14,
        bright_yellow = p.c15,
        bright_blue = p.c16,
        bright_magenta = p.c17,
        bright_cyan = p.c18,
        bright_white = p.c19,

        background = colorscheme.editorBackground,
        foreground = colorscheme.mainText,
    }

    return colorscheme
end

return M
