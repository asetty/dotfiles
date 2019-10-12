# Remove shell greeting
set fish_greeting
# force tmux to be 256color and unicode compatible
alias tmux="tmux -u -2"
# Add to path from .profile
bass source ~/.profile
# Set default editor
set -gx EDITOR vim
# Use starship theme
eval (starship init fish)
# Check if exa/bat are installed
if type "exa" >/dev/null;
    alias ls=exa
end
if type "bat" >/dev/null;
    alias cat=bat
end
