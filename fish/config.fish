if status is-interactive
    # Cursor style (no fat cursor)
    set -g fish_cursor_default line
    set -g fish_cursor_insert line
    set -g fish_cursor_replace_one underscore
    set -g fish_cursor_visual block

    # Silence greeting
    set -g fish_greeting

    # PATH (safe, no duplicates)
    fish_add_path ~/.local/bin /usr/local/bin $HOME/go/bin

    # Editor
    set -gx EDITOR nvim

    # Optional: zoxide
    zoxide init fish | source

    alias bat="batcat"

    status --is-interactive; and nvm use 20
end
