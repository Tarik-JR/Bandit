INSTRUCTION:


Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but something else. Find out what it is, how it works and how to break out of it.

NOTE: if you’re a Windows user and typically use Powershell to ssh into bandit: Powershell is known to cause issues with the intended solution to this level. You should use command prompt instead.

SOLUTION:

as said in INSTRUCTION: we already have the private key in our working directory. but when trying to login, it succefully login and logout automatically.
It also says that the shell is not /bin/bash, but something else.......

lets find out the bash bandit26 is using:
cat /etc/passwd | grep bandit26
bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
it is using showtext bash.
lets take a look what this file consists of:
cat /usr/bin/showtext
we get:
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0

its a script called showtext that opens a file called text.txt with the more program.
when we tried to login to bandit26 using the privateKey.
the connection gets automatically closed . but before that it prints out something:
  _                     _ _ _   ___   __  
 | |                   | (_) | |__ \ / /  
 | |__   __ _ _ __   __| |_| |_   ) / /_  
 | '_ \ / _` | '_ \ / _` | | __| / / '_ \ 
 | |_) | (_| | | | | (_| | | |_ / /| (_) |
 |_.__/ \__,_|_| |_|\__,_|_|\__|____\___/ 
Connection to bandit.labs.overthewire.org closed.
I believe the bandit26 is the text.txt file.
what exactly happened? what can we do as a trick to get into the machine?
the text in text.txt is very short and it gets displayed using more command then we exit. this is because the more command does not need to go into interactive mode. but the trick is taht if we can make the text.txt larger or make the terminal window smaller, more will get us into command/interactive mode where we can apply our commands before the exit.

KNOWLEDGE:

A shell acts like a translator between you and the computer’s operating system. You type commands in a way that’s easy for humans, and the shell converts those commands into instructions the computer can understand and execute.
A shell is a command-line interpreter or user interface that provides users with access to an operating system’s services. It interprets and executes the commands entered by the user, either interactively or from a script, and facilitates communication between the user and the kernel (the core of the OS).
A shell starts once we login to a user. automatically.
More formally:

A shell is a program that reads user input (commands), parses and interprets these commands, executes them by interacting with the operating system kernel, and then returns the output or results to the user.
Each user has his own default shell.which Shell is used by each user can be found at the end of the line for that user in the '/etc/passwd' file


more command(or program):its a command that allows you to open a file for interactive reading,allowing scrooling and searching.
