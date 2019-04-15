#!/bin/bash

# Script lets you open typora in your notes folder (required) with a [some number]newnote.md file opened by default for you to just jump in and get started right away.

IFS='
'
Notesdir="" # substitute this with your local Notes directory
file_list=($(ls "${Notesdir}")) 
file_count=(${#file_list[*]})
nonote=0
for (( i=0; i<${file_count}; i=$i+1))
do
    if [ ${file_list[${i}]} != "$((${i}-${nonote}))newnote.md" ] 
    then
        nonote=$((${nonote}+1))
        if [[ ! ${file_list[${i}]::1} =~ [0-9]+ ]]; then
                break
        fi
    fi
done
newnote="$((${i}-${nonote}+1))newnote.md"
touch "${Notesdir}/$newnote"
typora "${Notesdir}/$newnote"


