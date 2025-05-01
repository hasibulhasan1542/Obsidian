Prerequisites
- Install Obsidian
- Install Git
- Create GitHub Account

#Steps
1) Create a folder in local machine
2) Paste your files inside the folder (don't leave folder empty)
3) Create a repo in GitHub
4) Open PowerShell as administrator
5) Go to the local machine folder - `cd (folder path)`
6) Paste this in Pshell - `git init`
7) Copy HTTPS link from remote repo
8) Connect local to remote repo (use the HTTPS) - `git remote add origin (HTTPS link)`
9) Config this folder as safe `git config --global --add safe.directory (foler path)`
10) Add files to repo - `git add .`
11) Check status of local - `git status`
12) Commit initial files to repo - `git commit -m "Initial commit"`
13) Push files from local to repo - `git push -u origin main`
14) Go to obsidian and 'Open folder Vault'
15) Open the local folder you created for remote repo
16) Install 'Git' plugin in obsidian and Enable it
17) Go to 'Git' plugin settings and put `sync time` here 'Auto commit-and-sync interval (minutes)'
18) Now edit your files in local repo and wait till `sync time`
19) After `sync time` go to GitHub and reload to check if it's updating automatically
20) Change