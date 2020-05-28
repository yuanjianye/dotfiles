# Run command file for percol
percol.view.CANDIDATES_LINE_BASIC    = ("default", "default")
percol.view.CANDIDATES_LINE_SELECTED = ("underline","on_default", "yellow")
percol.view.CANDIDATES_LINE_MARKED   = ("bold", "on_cyan", "black")
percol.view.CANDIDATES_LINE_QUERY    = ("yellow", "bold")
percol.import_keymap({
    "C-k" : lambda percol: percol.command.select_previous(),
    "K" : lambda percol: percol.command.select_previous(),
    "C-j" : lambda percol: percol.command.select_next(),
    "J" : lambda percol: percol.command.select_next(),
    "C-h" : lambda percol: percol.command.select_previous_page(),
    "H" : lambda percol: percol.command.select_previous_page(),
    "C-l" : lambda percol: percol.command.select_next_page(),
    "L" : lambda percol: percol.command.select_next_page(),
    "C-d" : lambda percol: percol.command.delete_backward_word(),
    "D" : lambda percol: percol.command.delete_backward_word(),
    "C-c" : lambda percol: percol.cancel(),
    "C" : lambda percol: percol.cancel(),
})
