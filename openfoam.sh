#!/usr/bin/bash
mkdir ~/openfoam
wget https://sourceforge.net/projects/openfoam/files/v2506/OpenFOAM-v2506.tgz/download -O OpenFOAM-v2506.tgz
tar -xvzf OpenFOAM-v2506.tgz
cd OpenFOAM-v2506
source ~/openfoam/OpenFOAM-v2506/etc/bashrc
./Allwmake -j $(nproc) -s -q
./Allwmake-plugins -j3 vtkOutput cfMesh
echo "source \$HOME/openfoam/OpenFOAM-v2506/etc/bashrc" >> ~/.bashrc