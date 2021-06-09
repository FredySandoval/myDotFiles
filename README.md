# myVSCodeKeybindings
my Keybindings for VSCode


// VIM like 
// alt + k = Cursor Up
// alt + j = Cursor Down
// alt + h = Cursor Left
// alt + l = Cursor Right

// alt + b  = cursorWordLeft
// alt + , = cursorWordEndRight

// Delete Left || backspace
// alt + ; = backspace 

//Vim like moves

// alt + v = word select entire line
// alt+o = editor.action.insertLineAfter
// alt+a = cursor 

// this is the neww line editor editor
[
  //==================================
  // VIM like hjkl
  // ctrl + k = Cursor Up
  // ctrl + j = Cursor Down
  // ctrl + h = Cursor Left
  // ctrl + l = Cursor Right
  {
      "key": "alt+h",
      "command": "cursorLeft",
      "when": "textInputFocus"
  },
  {
      "key": "alt+j",
      "command": "cursorDown",
      "when": "textInputFocus"
  },
  {
      "key": "alt+k",
      "command": "cursorUp",
      "when": "textInputFocus"
  },
  {
      "key": "alt+l",
      "command": "cursorRight",
      "when": "textInputFocus"
  },
  //================================
  // Move on suggestions
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
  //================================
  //Fast VIM moves eb,
  {
      "key": "alt+b",
      "command": "cursorWordLeft",
      "when": "textInputFocus"
  },
  {
      "key": "alt+e",
      "command": "cursorWordRight",
      "when": "textInputFocus"
  },
  //================================
  // Requires Multi-Command Extention 
  {
      "key": "alt+d alt+d",
      "command": "extension.multiCommand.execute",
      "args": { 
          "sequence": [
          "cursorEnd",
          "cursorHomeSelect",
          "cursorHomeSelect",
          "editor.action.clipboardCopyAction",
          "editor.action.clipboardCutAction",
          "deleteLeft"
          ]
      },
      "when": "textInputFocus"
  },
  {
      "key": "alt+p",
      "command": "extension.multiCommand.execute",
      "args": { 
          "sequence": [
              "editor.action.insertLineAfter",
              "editor.action.clipboardPasteAction",
              "cursorHome"
          ]
      }
  },
  //================================
  // Vim like moves
  {
      "key": "alt+o",
      "command": "editor.action.insertLineAfter",
      "when": "editorTextFocus && !editorReadonly"
  },
  {
      "key": "alt+a",
      "command": "cursorEnd",
      "when": "textInputFocus"
  },
  {
      "key": "alt+m",
      "command": "editor.action.moveLinesUpAction",
      "when": "editorTextFocus"
  },
  {
      "key": "alt+n",
      "command": "editor.action.moveLinesDownAction",
      "when": "editorTextFocus"
  },
  // {
  //     "key": "shift+alt+j",
  //     "command": "editor.action.copyLinesDownAction",
  //     "when": "editorTextFocus && !editorReadonly"
  // },
  // {
  //     "key": "ctrl+shift+alt+down",
  //     "command": "-editor.action.copyLinesDownAction",
  //     "when": "editorTextFocus && !editorReadonly"
  // },
  //================================
]
