function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # no greating
    set fish_greeting

    # oh-my-posh
    if test -f $HOME/.config/posh_theme.omp.json; and type -q oh-my-posh
        oh-my-posh init fish --config $HOME/.config/posh_theme.omp.json | source
    end
end

if test -d $HOME/.local/bin
    if not contains $HOME/.local/bin $PATH
        set -x PATH $HOME/.local/bin $PATH
    end
end

if test -f $HOME/.cache/ags/user/generated/terminal/sequences.txt
    cat $HOME/.cache/ags/user/generated/terminal/sequences.txt
end

# nvim
if type -q nvim
    set -x EDITOR nvim
    set -x VISUAL nvim
end

if test -d $HOME/.config/fish/custom
    for file in $HOME/.config/fish/custom/*.fish
        if test -f $file
            source $file
        end
    end
end