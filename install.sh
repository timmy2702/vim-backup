# Remove everything in ~/.vim
rm -drf ~/.vim
mkdir -p ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vim/tags

# Copy the configs
cp .vimrc ~
cp .ctags ~
cp .ycm_extra_conf.py ~

# Install Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install boost tags
sudo apt install apt-file
sudo apt-file update
apt-file list boost | grep -E -o '/usr/include/.*\.(h|hpp)' | grep -v '/usr/include/boost/typeof/' > ~/.vim/tags/boost-filelist
ctags --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/boost -L ~/.vim/tags/boost-filelist

# Install plugings
cd ~/.vim/bundle

# Install image.vim
git clone https://github.com/ashisha/image.vim.git

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

# Install vim-autotag
git clone git://github.com/craigemery/vim-autotag.git

# Install youcompleteme
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all

# Install ultisnips
git clone https://github.com/SirVer/ultisnips.git
