stow .

echo "linking zsh conf"
ln -s ${HOME}/.config/zsh/.zshrc ${HOME}/.zshrc
echo ".scripts directory"
ln -s ./scripts $HOME/.scripts

scripts_dir="./scripts"
scripts_file=`ls $scripts_dir`

for file in $scripts_file
do
  full_path=`readlink -f ${scripts_dir}/${file}`
  link_path=$HOME/.local/bin/
  echo Linking $full_path to $link_path
  ln -s $full_path $link_path
done

