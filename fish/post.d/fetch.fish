if status is-interactive
    if not set -q no_fetch
        if type -q ff-short
            ff-short
        end
    end
end