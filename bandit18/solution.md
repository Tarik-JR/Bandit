INSTRUCTION:

The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
SOLUTION:
 as  mentionned, we get get disconnected automaticaly because someone configured it that way, but we dont really care to stay logged in, all we want is the flag{aka the password to the next level.}
 we can simply run a command without login in, using ssh, this way we can cat the password and move on to the next level
using the syntax i included in the knowledge section, we might actually get the password.
└──╼ $ssh -t bandit18@bandit.labs.overthewire.org -p 2220 'cat ~/readme'
 got us this password:
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
KNOWLEDGE:

# To execute a command on a remote server:
ssh -t <user>@<host> 'the-remote-command'


found it in the cheatSheet of ssh and i already knew about it. really important.
