clear

echo 'Hi welcome to the Invim installation script!'
echo 'To install this Nvim config you have to have neovim and git,'
echo "but if you don't then don't worry they will be installed in a second!"
echo ''
read -p $'Press enter to continue...\n'

clear

if pacman -Qq neovim &>/dev/null; then
	echo 'Neovim is already installed, skipping this step.'
else
	echo 'Installing Neovim...'
  echo ''

	sudo pacman -S neovim
	clear

	echo Neovim installed!
fi

echo ''
read -p $'Press enter to continue...\n'

clear

if pacman -Qq git &>/dev/null; then
	echo 'Git is already installed, skipping this step.'
else
	echo 'Installing Git...'
  echo ''

	sudo pacman -S git
	clear

	echo Git installed!
fi

echo ''
read -p $'Press enter to continue...\n'

clear

echo 'Cloning the "invim" repo...'
echo ''

git clone https://github.com/Boomyboomer123/invim.git

clear

echo '"invim" has been cloned!'
echo ''
read -p $'Press enter to continue...\n'

clear

echo 'Clearing the "~/.config/nvim/" folder (just in case)...'
echo ''

rm -r ~/.config/nvim/

echo 'Done!'
echo ''
read -p $'Press enter to continue...\n'

clear

echo 'Copying the dotfiles (config files)...'
echo ''

cp -R ~/invim/config/. ~/.config/nvim/

echo 'Done!'
echo ''
read -p $'Press enter to continue...\n'

clear

read -r -p "Do you want to delete the repo folder (it was only needed for installation)? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]
then
	rm -rf ~/invim/
fi

clear

read -r -p "Do you want to lunch Nvim? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]
then
  nvim
fi

clear

read -p $'Ok, bye!\n'

clear
