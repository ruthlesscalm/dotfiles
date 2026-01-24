if status is-interactive
    # Commands to run in interactive sessions can go here

    # add ~/.local/bin to PATH
if not contains $HOME/.local/bin $PATH
    set -Ux PATH $HOME/.local/bin $PATH
end


    set -Ux PATH ~/.local/bin /usr/local/bin/ $PATH

    set -Ux EDITOR nvim

    set -g fish_greeting
end
