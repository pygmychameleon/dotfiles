mkdir -p $HOME/.config

# point to the correct .zshrc
cat > "$HOME/.zshenv" << 'EOF'
export ZDOTDIR="$HOME/.config/zsh"
EOF

ln -sfn $HOME/dotfiles/config/ghostty              $HOME/.config/ghostty
ln -sfn $HOME/dotfiles/config/aerospace $HOME/.config/aerospace
ln -sfn $HOME/dotfiles/config/sketchybar $HOME/.config/sketchybar
ln -sfn $HOME/dotfiles/config/fish $HOME/.config/fish
ln -sfn $HOME/dotfiles/config/nvim $HOME/.config/nvim
ln -sfn $HOME/dotfiles/config/tmux $HOME/.config/tmux

mkdir -p "$HOME/Library/Application Support/Code/User"
mkdir -p "$HOME/Library/Application Support/Cursor/User"
ln -sfn $HOME/dotfiles/config/vscode/settings.json    $HOME/Library/Application\ Support/Code/User/settings.json
ln -sfn $HOME/dotfiles/config/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sfn $HOME/dotfiles/config/cursor/settings.json    $HOME/Library/Application\ Support/Cursor/User/settings.json
ln -sfn $HOME/dotfiles/config/cursor/keybindings.json $HOME/Library/Application\ Support/Cursor/User/keybindings.json

mkdir -p $HOME/.config/zsh
ln -sfn $HOME/dotfiles/config/zsh/.zprofile $HOME/.config/zsh/.zprofile
ln -sfn $HOME/dotfiles/config/zsh/.zenv $HOME/.config/zsh/.zenv
ln -sfn $HOME/dotfiles/config/.glzr $HOME/.glzr


