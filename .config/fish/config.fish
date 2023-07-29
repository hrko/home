# オリジナルは https://github.com/hrko/home/.config/fish/config.fish にあります。
# 手動で書き換えないでください。
# マシン固有の設定は ~/.config/fish/conf.d/local.fish に書いてください。

if status is-interactive
    # Commands to run in interactive sessions can go here
end

## 標準セットアップ

# グリーティングを表示しない
set -g fish_greeting

# Fast Node Manager (fnm)
if type -q fnm
    fnm env --use-on-cd --shell fish 2>/dev/null | source
    fnm completions --shell fish 2>/dev/null | source
end

# patrickf1/fzf.fish のキーバインド設定
fzf_configure_bindings --directory=\cf --processes=\cp --variables=\e\cv

# Starship がインストールされていれば有効化
if type -q starship
    starship init fish | source
end

# WezTerm がインストールされていれば補完を有効化
if type -q wezterm
    wezterm shell-completion --shell fish | source
end

# VSCode 内で起動された場合は、VSCode のシェル統合を有効化
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
