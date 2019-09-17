#! /bin/bash

lista() {
  local dir=${1:-.} nom=$2 archivo
  for archivo in "$dir"/*; do
    [ -e "$archivo" ] || [ -L "$archivo" ] || continue
    if [ -d "$archivo" ]; then
      printf '%sDirectorio %q\n' "$nom" "${archivo##*/}"
      lista "$archivo" "${nom}    "
    else
      printf '%sFile %q\n' "$nom" "${archivo##*/}"
      
    fi
      
  done


}

lista




