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

Then, we have to collect Ipv4 from Host

```zsh
multipass shell {instance-name}
```

After collecting Ipv4, we need to connect it from 

**Finder > Go > Connect to a server 

>[!Note] Issue
>You can't copy a folder. (Only files are allowed to copy from host to VM)


