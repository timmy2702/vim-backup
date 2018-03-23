# Copy the current config files
cp ~/.vimrc .
cp ~/.ctags .
cp ~/.ycm_extra_conf.py .
cp ~/.ideavimrc .

# copy my snippets
rm -drf my-snippets
mkdir -p my-snippets
cp -r ~/.vim/my-snippets .
