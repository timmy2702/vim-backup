# Remove everything in ~/.vim
rm -dRI ~/.vim
mkdir -p ~/.vim

# Copy the configs
cp .vimrc ~
cp .ctags ~

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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

# Install vim-easytags
git clone https://github.com/xolox/vim-easytags.git

# Install vim-misc
git clone https://github.com/xolox/vim-misc.git

# Install youcompleteme
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all
