brew install neovim\
font-fira-code-nerd-font \
font-hack-nerd-font \
font-geist-mono-nerd-font \
font-jetbrains-mono-nerd-font

-- only if u need golang
brew tap incu6us/homebrew-tap
brew install incu6us/homebrew-tap/goimports-reviser \
golines

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
