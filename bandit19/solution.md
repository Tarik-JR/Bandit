INSTRUCTION:
To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.


SOLUTION:
after listing the content of our home directory, we find a file called "bandit20-do" we run it because it is executable using 
syntax:
./bandit20-do
it prints this :"Run a command as another user.
  Example: ./bandit20-do id"
  when we do as the example says we get:
  uid=11019(bandit19) gid=11019(bandit19) euid=11020(bandit20) groups=11019(bandit19)
we see that we got a new id, called euid which stands for Effective user id.so basically if i run any command in the place of Id it is going to be executed with the Effective user id(bandit20). thus we can just cat the password easily:
../bandit20-do cat /etc/bandit_pass/bandit20
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
KNOWLEDGE:

the ID command displays the current user and group identity
permissions:
r → read
w → write
s → this is where it gets special!
Normally you'd expect x here for execute, right?

But we see s, and that means:

SetUID is ON, and the file is executable. the current user can execute, and the program will run with the owner's permissions .
normally, When you run a program, it runs with your permissions. but when the setUID is ON its runned using the owner's permissions.Because some programs need higher access to do stuff.

you can always try finding Setuid binaries owned by root to exploit it using:
find / -perm -4000 2>/dev/null
