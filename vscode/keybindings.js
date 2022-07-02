[
    // Uses J | K to select next/previous suggestion
    {
        "key": "alt+j",
        "command": "selectNextSuggestion",
        "when": "suggestWidgetVisible"
    },
    {
        "key": "alt+k",
        "command": "selectPrevSuggestion",
        "when": "suggestWidgetVisible"
    },
    // Maps Escape to Alt + L
    {
        "key": "alt+l",
        "command": "extension.vim_escape",
        "when": "editorTextFocus && vim.active && vim.mode == 'Insert'"
    }
]