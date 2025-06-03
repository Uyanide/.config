if not status is-interactive
    return
end

if not set -q fetch_logo_type
    # "auto" for images, "raw" for symbols, "builtin" for distros
    set -g fetch_logo_type "auto"
end

if type -q fastfetch
    alias ff="fastfetch -c $HOME/.config/fastfetch/config_$fetch_logo_type.jsonc"

    if test -f "$HOME/.config/fastfetch/brief_$fetch_logo_type.jsonc"
        alias ff-brief="fastfetch -c $HOME/.config/fastfetch/brief_$fetch_logo_type.jsonc"
    else
        alias ff-brief=ff
    end
end

# add 'set -g no_fetch' somewhere other than post.d to disable fetching
if not set -q no_fetch
    if type -q ff-brief
        ff-brief
    end
end