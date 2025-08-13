
# Build From Source

**Download the source package**
```
wget https://sourceforge.net/projects/openfoam/files/v2506/OpenFOAM-v2506.tgz/download -O OpenFOAM-v2506.tgz
wget https://sourceforge.net/projects/openfoam/files/v2506/ThirdParty-v2506.tgz/download -O ThirdParty-v2506.tgz
```

then

```bash
mkdir ~/openfoam
```

after putting the downloaded .tgz file inside ~/openfoam

```bash
cd ~/openfoam
```

```bash
tar -xvzf OpenFOAM-v2506.tgz
```

```bash
source ~/openfoam/OpenFOAM-v2506/etc/bashrc
```

To start build with all available CPU core

```bash
./Allwmake -j $(nproc) -s -q
```

***
***
<center><h1>Bash Script to do all</h1></center>

```bash
#!/usr/bin/bash
mkdir ~/openfoam
wget https://sourceforge.net/projects/openfoam/files/v2506/OpenFOAM-v2506.tgz/download -O OpenFOAM-v2506.tgz
tar -xvzf OpenFOAM-v2506.tgz
cd OpenFOAM-v2506
source ~/openfoam/OpenFOAM-v2506/etc/bashrc
./Allwmake -j $(nproc) -s -q
./Allwmake-plugins -j3 vtkOutput cfMesh
echo "source \$HOME/openfoam/OpenFOAM-v2506/etc/bashrc" >> ~/.bashrc
```

 ![[openfoam.sh | Shell]]
 ***

___

## If something fails, like for `src/finiteVolume` 

Clean the broken one
```bash
wclean src/finiteVolume
```

Build the broken (only)
```bash
wmake  src/finiteVolume
```

And then finally, to continue
```bash
./Allwmake -j $(nproc)
```

*To clean broken and make a fresh start*
```bash
# Clean broken dependency files and build cache
./Allwclean
```
