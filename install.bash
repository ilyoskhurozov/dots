#!/bin/bash

CUR_DIR=$(pwd)

update() {
  [[ -e $1 ]] && mv $1 $1.old
  ln -s $2 $1
}

cp_app_config() {
  if
    command -v $1 > /dev/null
  then
    update ~/.config/$1 $CUR_DIR/.config/$1
  else
    echo "$1 configs aren't copied as it is not installed"
  fi
}

update ~/.bashrc $CUR_DIR/.bashrc

for APP in alacritty flameshot lf neofetch nvim paru rofi
do
  cp_app_config $APP
done

update ~/.config/wall.png $CUR_DIR/.config/wall.png
