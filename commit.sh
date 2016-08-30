# Copy the current config files
cp ~/.vimrc .
cp ~/.ctags .

# Commit the backup config files
git add --all
git commit -m "Backup configs"
git push origin master
