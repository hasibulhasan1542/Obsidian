
# Build From Source

**Download the source package**
```
wget https://sourceforge.net/projects/openfoam/files/v2506/OpenFOAM-v2506.tgz/download -O OpenFOAM-v2506.tgz
wget https://sourceforge.net/projects/openfoam/files/v2506/ThirdParty-v2506.tgz/download -O ThirdParty-v2506.tgz
```

***
***
<center><h1>Bash Script to do all</h1></center>

```bash
#!/usr/bin/bash
#sudo apt-get update -y
sudo apt install build-essential -y
#sudo apt-get install openmpi-bin openmpi-doc libopenmpi-dev -y

sudo apt install -y \
	python3 \
    build-essential \
    autoconf \
    autotools-dev \
    cmake \
    git \
    flex \
    bison \
    zlib1g-dev \
    libgmp-dev \
    libmpfr-dev \
    libboost-system-dev \
    libboost-thread-dev \
    openmpi-bin \
    libopenmpi-dev \
    libptscotch-dev \
    libcgal-dev

mkdir /home/ubuntu/openfoam
sudo chmod -R a+rwx /home/ubuntu/openfoam
cd /home/ubuntu/openfoam
wget https://sourceforge.net/projects/openfoam/files/v2506/OpenFOAM-v2506.tgz/download -O OpenFOAM-v2506.tgz
sudo chmod -R a+rwx /home/ubuntu/openfoam/OpenFOAM-v2506.tgz
tar -xvzf OpenFOAM-v2506.tgz
sudo chmod -R a+rwx /home/ubuntu/openfoam/OpenFOAM-v2506
cd
source /home/ubuntu/openfoam/OpenFOAM-v2506/etc/bashrc
cd /home/ubuntu/openfoam/OpenFOAM-v2506
./Allwmake -j$(nproc) -s -q
#./Allwmake-plugins -j3 vtkOutput cfMesh
echo "source /home/ubuntu/openfoam/OpenFOAM-v2506/etc/bashrc" >> ~/.bashrc
```

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
