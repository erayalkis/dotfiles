# Parses commands from ARGs and sets up config locally

if ! command -v stow &> /dev/null
then
  echo "Stow not installed, installing now..."
  sudo apt-get install stow
fi

COMMAND=$1

case $COMMAND in 
  stow)
    stow bash kitty neovim zsh
  ;;

  rm)
    rm ~/.config/nvim/init.lua ~/.config/nvim/lazy-lock.json ~/.bashrc
  ;; 

  link-root)
    echo "stow"
  ;; 
esac
