INSTRUCTION:

There is a git repository at ssh://bandit28-git@localhost/home/bandit28-git/repo via the port 2220. The password for the user bandit28-git is the same as for the user bandit28.

Clone the repository and find the password for the next level.

SOLUTION:

same as before, we clone the repo and see whats inside

inside the README.md file we find:
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

basically the password was here but its was removed i think.
using git log we can see the log of all the commits made by the authot;
┌─[kira74@parrot]─[~/repo]
└──╼ $git log
commit 674690a00a0056ab96048f7317b9ec20c057c06b (HEAD -> master, origin/master, origin/HEAD)
Author: Morla Porla <morla@overthewire.org>
Date:   Thu Apr 10 14:23:19 2025 +0000

    fix info leak

commit fb0df1358b1ff146f581651a84bae622353a71c0
Author: Morla Porla <morla@overthewire.org>
Date:   Thu Apr 10 14:23:19 2025 +0000

    add missing data

commit a5fdc97aae2c6f0e6c1e722877a100f24bcaaa46
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Apr 10 14:23:19 2025 +0000

    initial commit of README.md


we have a lot of commits made. we can move back to a specific commit by using its hash.

we can move to the one before he fixes info leak;

using:

git checkout <hash_pass>

then by reading the README.md file now we get: 

└──╼ $cat README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: 4pT1t5DENaYuqnqvadYs1oE4QLCdjmJ7


KNOWLEDGE:

git log is like a log for all the commits made on a specific branch.
git checkout <hash>/ git switch <hash/branch_name>

git switch - to return to main branch.
