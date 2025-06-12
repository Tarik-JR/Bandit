INSTRUCTION:
The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.



SOLUTION:
It is all about how to connect to a host using SSH, syntax is easy:
ssh username@machine(host) .
first I tried to connect using the general syntax and without specifying the port, because normally SSH operates on port 22, But I got this warning:
"!!! You are trying to log into this SSH server on port 22, which is not intended."
I had to specify the port for it work, i just ahd to add the arguemnt for port specification. I got a new syntax:
in our case it is: 
ssh bandit0@bandit.labs.overthewire.org -p 2220 
you will be asked a password which is the same as the username(bandit0)
After getting in, you can read a file called readme in the working directory; syntax:
cat readme
you get: 
Congratulations on your first steps into the bandit game!!
Please make sure you have read the rules at https://overthewire.org/rules/
If you are following a course, workshop, walkthrough or other educational activity,
please inform the instructor about the rules as well and encourage them to
contribute to the OverTheWire community so we can keep these games free!

The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

KNOWLEDGE:
SSH is a network protocol that gives users -- particularly systems administrators -- a secure way to access a computer/server over an unsecured network, remotely. ssh do the authentication either using password or Public/private key.
    there are two sides, ssh client(the device trying to connect) and ssh server(device trying to connect to).it runs most likely on port 22.
