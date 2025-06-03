if status is-interactive
    # no greeting
    set fish_greeting

    alias ls="ls --hyperlink=auto --color=auto"
end

if test -d $HOME/.local/bin
    if not contains $HOME/.local/bin $PATH
        fish_add_path $HOME/.local/bin
    end
end

if test -d $HOME/bin
    if not contains $HOME/bin $PATH
        fish_add_path $HOME/bin
    end
end

# nvim
if type -q nvim
    set -x EDITOR nvim
    set -x VISUAL nvim
end

# cargo
if test -f $HOME/.cargo/env.fish
    source $HOME/.cargo/env.fish
end

if test -d $HOME/.config/fish/prev.d
    for file in $HOME/.config/fish/prev.d/*.fish
        if test -f $file
            source $file
        end
    end
end

if test -d $HOME/.config/fish/post.d
    for file in $HOME/.config/fish/post.d/*.fish
        if test -f $file
            source $file
        end
    end
end