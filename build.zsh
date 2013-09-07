#!/bin/zsh

function cleanup()
  {
  sudo rm --recursive --force CuraEngine Power
  for deb in scripts/linux/Cura-*-debian.deb(N); do
    sudo rm $deb
    done
  }

cleanup

./package.sh debian

sudo dpkg -i scripts/linux/Cura-*-debian.deb(N) &&
  for f in scripts/linux/Cura-*-debian.deb(N); do
    mv $f ./$(filetime $f)-$(basename $f)
    done

cleanup
