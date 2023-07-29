if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fnm
if type -q fnm
    fnm env --use-on-cd --shell fish 2>/dev/null | source
    fnm completions --shell fish 2>/dev/null | source
end

# Config for patrickf1/fzf.fish
fzf_configure_bindings --directory=\cf --processes=\cp --variables=\e\cv

# If startship is installed, use it
if type -q starship
    starship init fish | source
end

# Enable wezterm completions if wezterm is installed
if type -q wezterm
    wezterm shell-completion --shell fish | source
end

# Enable VSCode integration if fish is running in VSCode
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
