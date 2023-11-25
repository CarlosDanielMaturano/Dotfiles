stow .

ln -s ${HOME}/.config/zsh/.zshrc ${HOME}/.zshrc

scripts_folder="./bin/scripts"
scripts_files=`ls $scripts_folder`

for file in $scripts_files
do
  full_path=`readlink -f ${scripts_folder}/${file}`
  link_path="/bin/"$file
  echo Linking $full_path to $link_path
  ln -s $full_path $link_path
done

