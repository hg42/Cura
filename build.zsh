#!/bin/zsh

dir3d=/home/harald/3D-print

args=()
args=($dir3d/things/test.stl $dir3d/Cura/simulation.ini)
args=($dir3d/things/test.stl)
args=(-s $dir3d/things/test.stl -o $dir3d/things/test.gcode)

export PYTHONPATH=$(pwd):$PYTHONPATH

python Cura/cura.py $args
