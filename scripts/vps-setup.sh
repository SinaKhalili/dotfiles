#  this is a setup for simply getting zsh + vim working on a vps
# === ZSH ===
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir ~/.config/antigen
curl -L git.io/antigen > ~/.config/antigen/antigen.zsh
curl https://raw.githubusercontent.com/SinaKhalili/dotfiles/master/zsh/.zshrc > ~/.zshrc

# === VIM ===
curl https://raw.githubusercontent.com/SinaKhalili/dotfiles/master/vim/.vimrc > ~/.vimrc

echo "======"
echo "Zsh + vim rc setup. Run source ~/.zshrc to see changes"
echo "======"