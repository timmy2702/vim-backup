# Remove everything in ~/.vim
rm -drf ~/.vim
mkdir -p ~/.vim
mkdir -p ~/.vim/autoload 
mkdir -p ~/.vim/bundle 
mkdir -p ~/.vim/colors 
mkdir -p ~/.vim/tags

# Copy the configs
cp .vimrc ~
cp .ctags ~
cp .ycm_extra_conf.py ~
cp .ideavimrc ~

# Copy my snippets
cp -r my-snippets ~/.vim

# Install Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install boost tags
sudo apt install -y apt-file libboost-dev
sudo apt-file update
apt-file list boost | grep -E -o '/usr/include/.*\.(h|hpp)' | grep -v '/usr/include/boost/typeof/' > ~/.vim/tags/boost-filelist
ctags --c++-kinds=+p --fields=+l --extra=+f --language-force=C++ -f ~/.vim/tags/boost -L ~/.vim/tags/boost-filelist

# Install plugings
cd ~/.vim/bundle

# Install nerdcommenter
git clone https://github.com/scrooloose/nerdcommenter.git

# Install nerdtree
git clone https://github.com/scrooloose/nerdtree.git

# Install syntastic
git clone --depth=1 https://github.com/scrooloose/syntastic.git

# Install vim-airline 
git clone https://github.com/vim-airline/vim-airline.git

# Install vim-cpp-enhanced-highlight
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git

# Install vim-colorschemes
git clone https://github.com/flazz/vim-colorschemes.git
cp vim-colorschemes/colors/* ~/.vim/colors

# Install youcompleteme
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all
cd ..

# Install ultisnips
git clone https://github.com/SirVer/ultisnips.git

# Install python-mode
git clone --recursive https://github.com/python-mode/python-mode.git
