#!/bin/sh

cur_dir=$(pwd)

update() {
  if test -e $1; then mv $1 $1.old; fi
  ln -s $2 $1
}

cp_app_config() {
  if
    command -v $1 > /dev/null
  then
    update ~/.config/$1 $cur_dir/.config/$1
  else
    echo "$1 configs aren't copied as it is not installed"
  fi
}

update ~/.bashrc $cur_dir/.bashrc

for APP in alacritty flameshot lf neofetch nvim paru rofi
do
  cp_app_config $APP
done

if
  command -v docker > /dev/null
then
  update ~/.docker $cur_dir/.docker
else
  echo "docker configs aren't copied as it is not installed"
fi

update ~/.config/wall.png $cur_dir/.config/wall.png
