# Remove everything in ~/.vim
rm -dRI ~/.vim
mkdir -p ~/.vim

# Copy the configs
cp .vimrc ~
cp .ctags ~

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
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

# Install youcompleteme
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all
