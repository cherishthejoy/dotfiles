if test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv fish | source
end

fish_add_path -g $HOME/lang/zig-aarch64-macos-0.16.0
fish_add_path -g $HOME/.local/bin

set -gx EDITOR nvim
set -gx VISUAL nvim
set -g fish_greeting

if type -q fzf
    fzf --fish | source
end

if type -q atuin
    atuin init fish | source
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
