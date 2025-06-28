INSTRUCTION:

There is a git repository at ssh://bandit31-git@localhost/home/bandit31-git/repo via the port 2220. The password for the user bandit31-git is the same as for the user bandit31.

Clone the repository and find the password for the next level.

SOLUTION:


└──╼ $cat README.md 
This time your task is to push a file to the remote repository.

Details:
    File name: key.txt
    Content: 'May I come in?'
    Branch: master


as instructed, we have to push the file called key.txt and its content should be as mentionned.

we only push commits we can not push files directly, first we have to stage the file using git add key.txt and then commit, but we will face an issue because in the .gitignore file we have this:

└──╼ $cat .gitignore 
*.txt
that basically means that git will ignore any file that end with .txt extention. By removing this we will be able to solve this challnege. 

after staging and pushing the file using:
git add key.txt
git push
we get:


bandit31-git@bandit.labs.overthewire.org's password: 
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 329 bytes | 329.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
remote: ### Attempting to validate files... ####
remote: 
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote: 
remote: Well done! Here is the password for the next level:
remote: 3O9RfhqyAlVBEZpVb6LYStshZoqoSx5K 
remote: 
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote: 
To ssh://bandit.labs.overthewire.org:2220/home/bandit31-git/repo
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'ssh://bandit.labs.overthewire.org:2220/home/bandit31-git/repo'


KNOWLEDGE:

.gitignore is a text file where you list the names or patterns of files and folders you want Git to ignore.
