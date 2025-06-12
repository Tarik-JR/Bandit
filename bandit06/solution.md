INSTRUCTIONS:



The password for the next level is stored somewhere on the server and has all of the following properties:

owned by user bandit7
owned by group bandit6
33 bytes in size


SOLUTION:
this might look like it is similar to the previous challenge, but this time we are searching the whole server(aka /)

we run the command: find / -user bandit7 -group bandit6 -size 33c
but we only get errors in the stdout

to see the stdout first we gotta "get rid of the stdError" so we send them to /dev/null which is like a trash or a blackhole for developers.
stdError is 2
we redirect it to the blackhole: 2>/dev/null

new syntax: find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

we find the file that contains the password:
bandit6@bandit:~$ find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
/var/lib/dpkg/info/bandit7.password

KNOWLEDGE:

When a program runs, it often prints messages. These messages go to two different places:
standard errors:This is where error messages go.Example: If you run ls fakefile, you get:
ls: cannot access 'fakefile': No such file or directory → that's stderr.


standard output:This is normal output from a program. Example: When you run ls, and it lists files — that's stdout.


