set fish_greeting ""

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

source ~/.config/fish/colorschemes/$COLORSCHEME.fish

bass source ~/.nix-profile/etc/profile.d/nix{,-daemon}.sh
