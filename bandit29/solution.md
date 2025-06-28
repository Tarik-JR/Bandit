INSTRUCTION:

There is a git repository at ssh://bandit29-git@localhost/home/bandit29-git/repo via the port 2220. The password for the user bandit29-git is the same as for the user bandit29.

Clone the repository and find the password for the next level.

SOLUTION:

Same as before, when we open the README.md file we find:
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: <no passwords in production!>

git log get us this:

└──╼ $git log
commit 3b8b91fc3c48f1a19d05670fd45d3e3f2621fcfa (HEAD -> master, origin/master, origin/HEAD)
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Apr 10 14:23:21 2025 +0000

    fix username

commit 8d2ffeb5e45f87d0abb028aa796e3ebb63c5579c
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Apr 10 14:23:21 2025 +0000

    initial commit of README.md

but none of the commits contain any important infos, maybe we cna see all the available branch using git branch; but we only have the master branch;)

using git branch -r  to git all the remote branches of the current git.

or use git branch -a to get both local and remote repos and we can simply use git switch <branch_name> to move to that branch.

└──╼ $git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/dev
  remotes/origin/master
  remotes/origin/sploits-dev

thats soo good, we have 4 more branches to search for the password;

using:
git switch dev                         we will get:
Code folder and README.md file
cat README.md we have:
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: qp30ex3VLz5MDG1n91YowTv4Q8l7CDZL


KNOWLEDGE:

we use git branch -a to see all local and remote branches. use git checkout <branch_name> to switch to it.


