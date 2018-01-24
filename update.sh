# Update the configs
cp .vimrc ~
cp .ctags ~
cp .ycm_extra_conf.py ~

# Update all the vim plugins
for folder in $( ls -d ~/.vim/bundle/*/ )
do
    cd $folder
    git pull origin master
    git submodule update --init --recursive
done
