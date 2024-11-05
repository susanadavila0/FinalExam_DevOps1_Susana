hola
print() firstName = input("What is your first name? ")
print("Hello " + firstName + "!")
git init
ls
git config --global user.name "SampleUser"
git config --global user.email "sample@example.com"
git config --list
cd labs/devnet-src/
mkdir git-intro
cd git-intro
git init
Initialized empty Git repository in /home/devasc/labs/devnet-src/git-intro/.git/
ls -a
git status
On branch master
No commits yet
nothing to commit (create/copy files and use "git add" to track)
echo "I am on my way to passing the CCTB DEVASC exam" > DEVASC.txt
ls -la
cat DEVASC.txt
git status
On branch master
No commits yet
Untracked files:
nothing added to commit but untracked files present (use "git add" to track)
git add DEVASC.txt
git status
git commit -m "Committing DEVASC.txt to begin tracking changes"
[master (root-commit) b510f8e] Committing DEVASC.txt to begin tracking changes
git log
echo "I am beginning to understand Git!" >> DEVASC.txt
cat DEVASC.txt
git status
On branch master
Changes not staged for commit:
no changes added to commit (use "git add" and/or "git commit -a")
git add DEVASC.txt
git commit -m "Added additional line to file"
[master 9f5c4c5] Added additional line to file
git log
git diff b510f8e 9f5c4c5
git branch feature
git branch
feature
* master
echo "This text was added originally while in the feature branch" >> DEVASC.txt
cat DEVASC.txt
git add DEVASC.txt
git status
On branch feature
Changes to be committed:
modified:   DEVASC.txt
git commit -m "Added a third line in feature branch"
[feature cd828a7] Added a third line in feature branch
git log
commit cd828a73102cf308981d6290113c358cbd387620 (HEAD -> feature)
Author: Sample User <sample@example.com>
Date:   Sat Apr 18 22:59:48 2020 +0000
commit 9f5c4c5d630e88abe2a873fe48144e25ebe7bd6a (master)
Author: Sample User <sample@example.com>
Date:   Sat Apr 18 19:17:50 2020 +0000
commit b510f8e5f9f63c97432d108a0413567552c07356
Author: Sample User <sample@example.com>
Date:   Sat Apr 18 18:03:28 2020 +0000
git checkout master
Switched to branch 'master'
git branch
cat DEVASC.txt
git branch
git branch test
git checkout test
git branch
cat DEVASC.txt
sed -i 's/CCTB/CCTB-College/' DEVASC.txt
cat DEVASC.txt
git commit -a -m "Change CCTB to CCTB-College"
git checkout master
git branch
sed -i 's/CCTB/college/' DEVASC.txt
cat DEVASC.txt
git add DEVASC.txt
git commit -m "Change CCTB to college in master branch"
git merge test
git commit -a -m "Changed CCTB to college"
git merge test
I am on my way to passing the college DEVASC exam
I am on my way to passing the CCTB-College DEVASC exam
git add DEVASC.txt
git commit -m "Resolved merge conflict between master and test branches"
Step 13: Manually edit the DEVASC.txt file to remove the conflicting text.
Use the vim command to edit the file.
devasc@labvm:~/labs/devnet-src/git-intro$ vim DEVASC.txt
Use the up and down arrow to select the proper line of text. Press dd (delete) on the following lines that are highlighted. dd will delete the line the cursor is on.
<<<<<<< HEAD
I am on my way to passing the college DEVASC exam
=======
I am on my way to passing the CCTB-College DEVASC exam
>>>>>>> test
I am beginning to understand Git!
This text was added originally while in the feature branch
Save your changes in vim by pressing ESC (the escape key) and then typing : (colon) followed by wq
and press enter.
ESC
:
wq
<Enter or Return>
Step 14: Verify your edits of DEVASC.txt in the master branch.
Verify you changes using the cat command.
devasc@labvm:~/labs/devnet-src/git-intro$ cat DEVASC.txt
I am on my way to passing the college DEVASC exam I am beginning to understand Git!
This text was added originally while in the feature branch
devasc@labvm:~/labs/devnet-src/git-intro$
Stage and commit DEVASC.txt to the master branch using the git commit -a command.
devasc@labvm:~/labs/devnet-src/git-intro$ git add DEVASC.txt
devasc@labvm:~/labs/devnet-src/git-intro$ git commit -a -m "Manually merged from test branch"
[master 22d3da4] Manually merged from test branch
devasc@labvm:~/labs/devnet-src/git-intro$
Step 16: Verify the commit.
Use the git log command to verify the commit. If necessary, you can use q to quit out of the git log display.
devasc@labvm:~/labs/devnet-src/git-intro$ git log
commit 22d3da41e00549ce69dc145a84884af6a1697734 (HEAD -> master) Merge: 72996c0 b6130a6
Author: Sample User <sample@example.com>
Date:Sun Apr 19 01:09:53 2020 +0000
manually merged from branch test
<output omitted>
git init
ls -a
git remote add origin https://github.com/<username>/devasc-study-team.git
git add DEVASC.txt
git commit -m "Initial commit of DEVASC.txt"
git push -u origin master
git remote add origin https://github.com/<username>/devasc-study-team.git
git add DEVASC.txt
git commit -m "Initial commit of DEVASC.txt"
git push -u origin master
git config --global user.name "YourActualGitHubUsername"
git config --global user.email "YourActualGitHubEmailAddress"
git config --list
git remote add origin https://github.com/github-username/devasc-study-team.git
git remote --verbose
origin  https://github.com/github-username/devasc-study-team.git (fetch)
origin  https://github.com/github-username/devasc-study-team.git (push)
git remote add origin https://github.com/github-username/devasc-study-team.git
git remote --verbose
origin  https://github.com/username/devasc-study-team.git (fetch)
origin  https://github.com/username/devasc-study-team.git (push)
git add DEVASC.txt
git commit -m "Initial commit with DEVASC.txt"
git log
cd ~/labs/devnet-src/sample-app/
touch user-input.sh
nano user-input.sh
bash user-input.sh
chmod a+x user-input.sh
mv user-input.sh user-input
./user-input
pip3 install flask
cd ~/labs/devnet-src/sample-app/
nano sample_app.py
git clone https://github.com/jmalcolm-cctb/password_generator
node -v
npm -v
sudo apt intall npm
sudo apt install npm
firebase login
cd
npm install -g firebase-tools
sudo npm install -g firebase-tools
npm install -g firebase-tools
