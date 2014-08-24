#!/bin/zsh

set -x

function cleanup()
  {
  for f in scripts/linux/*.deb(N); do
    mv $f ./$(filetime $f)-$(basename $f)
    done
  sudo rm --recursive --force CuraEngine Power
  for deb in scripts/linux/Cura-*-debian*.deb(N); do
    sudo rm $deb
    done
  }

cleanup

#target=debian_i386
target=debian_amd64

sudo ./package.sh $target

sudo dpkg -i scripts/linux/*$target.deb(N)

mine scripts/linux/

cleanup

cura