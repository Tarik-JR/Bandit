INSTRUCTION:

There is a git repository at ssh://bandit30-git@localhost/home/bandit30-git/repo via the port 2220. The password for the user bandit30-git is the same as for the user bandit30.

Clone the repository and find the password for the next level.

SOLUTION:

SAME AS BEFORE,but this time we get a fun sentence when we open the README file:

"└──╼ $cat README.md 
just an epmty file... muahaha
"
actually this level took me a lot of time to figure out the password, the whole solution was about somthing called git TAGS,

when i used :
└──╼ $git tag
secret
that means we have a tag called secret, 
using :
└──╼ $git show secret
fb5S2xb7bRyFmAvQYQGEqsbhVyJqhnDy
thats out password.

KNOWLEDGE:

GIT tags:
                    git tags, are used To mark important points or releases in the project history.
                    git tag <tagname> - Create a lightweight tag(Just a simple name for a commit (no extra info))
                    git tag -a <tagname> -m "message" - Create an annotated tag(stores your name, the date, and a message.)
                    git tag <tagname> <commit-hash> - Tag a specific commit
                    git tag - List tags
                    git show <tagname> - Show tag details #See details about a tag and the commit it points to.

