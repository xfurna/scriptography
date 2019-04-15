#!/bin/bash  
# The directory you want to use with a parameter entry for the category of wallpaper you want. for example, 'models', 'landscapes', 'outerspace', etc..
DIR="/hdd/Wallpapers/$1" 
 
# Internal Field Separator set to newline, so file names with 
# spaces do not break our script. 
IFS=' 
' 
  
if [[ -d "${DIR}" ]] 
then 
  # Runs ls on the given dir, and dumps the output into a matrix, 
  # it uses the new lines character as a field delimiter, as explained above. 
  file_matrix=($(ls "${DIR}")) 
  num_files=${#file_matrix[*]}  
  feh --bg-fill "${DIR}/${file_matrix[$((RANDOM%num_files))]}" 
fi 
~     
