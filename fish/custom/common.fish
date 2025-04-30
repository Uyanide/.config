alias ff=fastfetch
alias p=pwsh.exe

#set -x DEBUGINFO_URLS "https://debuginfod.archlinux.org"

if string match -r '^/mnt/c/Users/[^/]+/?' (pwd) >/dev/null
    cd $HOME
end