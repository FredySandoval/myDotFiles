// ~/.config/Code/User/keybindings.json
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
    },
    // from https://stackoverflow.com/questions/42796887/switch-focus-between-editor-and-integrated-terminal
    {
        "key":     "ctrl+`",
        "command": "workbench.action.terminal.focus"
    },
    {
        "key":     "ctrl+`",
        "command": "workbench.action.focusActiveEditorGroup",
        "when":    "terminalFocus"
    }
]