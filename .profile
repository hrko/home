#!/bin/sh

## https://github.com/hrko/home/

# ~/bin が存在すれば PATH に追加
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# .local/bin が存在すれば PATH に追加
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# ~/bin2 が存在すれば PATH に追加
if [ -d "$HOME/bin2" ] ; then
    PATH="$HOME/bin2:$PATH"
fi

# Rust の bin ディレクトリが存在すれば PATH に追加
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

# Go の bin ディレクトリが存在すれば PATH に追加
if [ -d "$HOME/.local/go/bin" ] ; then
    PATH="$HOME/.local/go/bin:$PATH"
fi
if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

# Fast Node Manager (fnm) が存在すれば PATH に追加
if [ -d "$HOME/.local/share/fnm" ] ; then
    PATH="$HOME/.local/share/fnm:$PATH"
fi

# less コマンドのデフォルトオプション
export LESS='--mouse --wheel-lines=3 --ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS --chop-long-lines'

# .profile.local があれば読み込む
if [ -f "$HOME/.profile.local" ]; then
  . "$HOME/.profile.local"
fi

# Bash の場合
if [ -n "$BASH_VERSION" ]; then
    # .bashrc が存在すれば読み込む
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
