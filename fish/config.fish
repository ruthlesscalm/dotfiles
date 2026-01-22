if status is-interactive
    # Commands to run in interactive sessions can go here
    set -Ux PATH ~/.local/bin /usr/local/bin/ $PATH

    set -Ux EDITOR nvim

    set -g fish_greeting
end
