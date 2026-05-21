# Copy over Omarchy configs
mkdir -p ~/.config
cp -R ~/.local/share/omarchy/config/* ~/.config/

# Use default bashrc from Omarchy
cp ~/.local/share/omarchy/default/bashrc ~/.bashrc

# Use default zshrc from Omarchy when zsh is already the user's shell
if [[ ${SHELL##*/} == "zsh" || -f $HOME/.zshrc ]]; then
  cp ~/.local/share/omarchy/default/zshrc ~/.zshrc
fi
