#!/bin/zsh

dir3d=/home/harald/3D-print

args=()
#args=($dir3d/things/test.stl $dir3d/Cura/simulation.ini)
args=($dir3d/things/test.stl)

export PYTHONPATH=$(pwd):$PYTHONPATH
#cd Cura
#python cura.py $object
python Cura/cura.py $args
