Use Ubuntu in MacOs in CLI level:

As I was in short of storage; I tried to change the directory; through I don't know it worked or not. 

It works! Because in my /Volumes/HDD/.Ubuntu folder there is a folder named qemu, and the multipass ubuntu VM runs on qemu. Inside qemu > vault > instances > u {my current instance name} > ubuntu....iso

That means it is using this directory as primary storage. Another fact is in Disk Utility, HDD showing some 2/3 GB less (due to this instance and OpenFoam installation)

```zsh
echo 'export MULTIPASS_HOME="/Volumes/HDD/.Ubuntu"' >> ~/.zshrc
```

```zsh
source ~/.zshrc
```

Then creating the instance

```zsh
multipass launch --name my-powerful-vm --cpus 3 --memory 12G --disk 20G
```


<h1><center>Creating Shared Folder</center></h1>
Inside VM

```bash
sudo apt update
sudo apt install samba -y
```

```bash
mkdir ~/share
```

Configure smba
```bash
sudo nano /etc/samba/smb.conf
```

paste this into that

```
[share]
   comment = share from Multipass VM
   path = /home/ubuntu/share
   browseable = yes
   guest ok = yes
   read only = no
   create mask = 0777
   directory mask = 0777
```

Then restart samba

```bash
sudo systemctl restart smbd
```

Ensure permissions match (Inside VM)
```bash
sudo chmod -R 777 /home/ubuntu/public-share
sudo chown -R nobody:nogroup /home/ubuntu/public-share
```
(As this is frequently needed thing, it is better to put it in a shell script and run it when the VM is turned on)

Then, we have to collect Ipv4 from Host

```zsh
multipass shell {instance-name}
```

After collecting Ipv4, we need to connect it from 

**Finder > Go > Connect to a server 

>[!Note] Issue
>No Issue, flawless

>[!Quote] Important
>Many Issue arises related to file permission, that's why running a shell script containing chmod -R 777 is needed too often

***

# Shell Script for deleting all except core files

```shell
#!/usr/bin/env bash
set -e

echo "🧹 Cleaning up everything except core files..."

find . -mindepth 1 -maxdepth 1 ! -name "0" \
    ! -name "constant" \
    ! -name "system" \
    ! -name "d.sh" \
    ! -name "notes.md" \
    ! -name "p.FOAM" \
    ! -name "r.sh" \
    ! -name "r2.sh" \
    -exec rm -rf {} +
find . -mindepth 1 -name ".*" -exec rm -rfv {} +
echo "✅ Cleanup complete."
```

# Shell Script to run simulation and delete 

```shell
#!/usr/bin/bash
rm -r $(pwd)/constant/polyMesh
./d.sh
blockMesh
pimpleFoam
find . -mindepth 1 -name ".*" -exec rm -rfv {} +
#sudo chmod -R 777 $(pwd)
#sudo chown -R nobody:nogroup $(pwd)

### Latest Solution ###
sudo chmod -R a+rw $(pwd)
```

# Shell Script to reach the destined folder and give permission

```zsh                                 
#!/usr/bin/bash

cd /home/ubuntu/public-share/v

#sudo chmod -R 777 /home/ubuntu/public-share
#sudo chown -R nobody:nogroup /home/ubuntu/public-share

### Latest solution
sudo chmod -R a+rw $(pwd)
```

