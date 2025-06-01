if status is-interactive
    if not set -q no_fetch
        if type -q ff-brief
            ff-brief
        end
    end
end