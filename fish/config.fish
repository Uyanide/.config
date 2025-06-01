if status is-interactive
    # no greeting
    set fish_greeting
end

if test -d $HOME/.local/bin
    if not contains $HOME/.local/bin $PATH
        set -x PATH $HOME/.local/bin $PATH
    end
end

if test -d $HOME/bin
    if not contains $HOME/bin $PATH
        set -x PATH $HOME/bin $PATH
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

if test -d $HOME/.config/fish/post.d
    for file in $HOME/.config/fish/post.d/*.fish
        if test -f $file
            source $file
        end
    end
end