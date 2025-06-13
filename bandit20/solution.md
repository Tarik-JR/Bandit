INSTRUCTION:
There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

SOLUTION:

KNOWLEDGE:

If a command needs to be run, but you don’t need to interact with it for a while and want to keep using the same terminal with other commands while the command is executing, you can use &. The ampersand will send the command in the background. This is a part of the Linux process management.

