function random01
    set -l byte (dd if=/dev/urandom bs=1 count=1 2>/dev/null | od -An -tu1)
    echo (math "$byte % 2")
end


if type -q fastfetch
    alias ff="fastfetch"

    if test -f "$HOME/.config/fastfetch/brief.jsonc"
        alias ff-brief="fastfetch -c $HOME/.config/fastfetch/brief.jsonc"
    else
        alias ff-brief=ff
    end
end