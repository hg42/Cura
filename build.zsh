#!/bin/zsh

dir3d=/home/harald/3D-print

args=()
args=($dir3d/things/test.stl $dir3d/Cura/simulation-speed150.ini)
args=(-s $dir3d/things/test.stl -o $dir3d/things/test.gcode)
args=($dir3d/things/test.stl)

export PYTHONPATH=$(pwd):$PYTHONPATH

python Cura/cura.py $args
