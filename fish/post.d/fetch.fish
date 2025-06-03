# add 'set -g no_fetch' somewhere other than post.d to disable fetching
if status is-interactive
    if not set -q no_fetch
        if type -q ff-brief
            ff-brief
        end
    end
end