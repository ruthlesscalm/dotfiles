if status is-interactive
    # Cursor style (clean line cursor)
    set -g fish_cursor_default line
    set -g fish_cursor_insert line
    set -g fish_cursor_replace_one underscore
    set -g fish_cursor_visual block

    # Silence greeting
    set -g fish_greeting

    # Environment Variables & Editor
    set -gx EDITOR nvim

    # PATH (Smart, safe path management - prevents duplicates)
    fish_add_path ~/.local/bin /usr/local/bin $HOME/go/bin

    # Node Version Manager initialization
    nvm use 20

    # Directory Jumping
    zoxide init fish | source

    # Better Aliases
    alias bat="batcat"
    
    # Custom Gemini Assistant Function
    function ask
        agy -p "$argv" > /tmp/agy_response.md
        mdv --theme dark /tmp/agy_response.md
        rm /tmp/agy_response.md
    end
end
