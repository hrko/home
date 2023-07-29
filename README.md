# home
My standard home directory setup.

## Instructions
### Put files
`install_files.sh`

### Software installation
1. Install [Fish](https://fishshell.com/) shell using a package manager.
2. Install [Rust](https://www.rust-lang.org/ja/learn/get-started) using the rustup script.
3. Install [Go](https://go.dev/doc/install) by extracting the latest archive on `~/.local`.
4. Install [Fast Node Manager (fnm)](https://github.com/Schniz/fnm#installation) using a script with option `--skip-shell`.
5. Install [Starship](https://starship.rs/ja-JP/guide/#%F0%9F%9A%80-%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB) using a script.
6. Install [fzf](https://github.com/junegunn/fzf) using a command: `go install github.com/junegunn/fzf@latest`
7. Install [Task](https://taskfile.dev/installation/#build-from-source) using a command: `go install github.com/go-task/task/v3/cmd/task@latest`

### Fish package installation
1. `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`
2. Rerun `install_files.sh` as Fisher restores `.config/fish/fish_plugins`.
3. `fisher update`

### Enable Task completions for Fish
1. `curl https://github.com/go-task/task/raw/main/completion/fish/task.fish > ~/.config/fish/completions/task.fish`
