INSTRUCTION:
There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

SOLUTION:
Using ’netcat’, we can create a connection in server mode - which listens for inbound connection. To have netcat send the password, I use echo and pipe it into netcat. The -n flag is to prevent newline characters in the input. Lastly, we let the process run in the background with &.
syntax:

 echo "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" | nc -l -p 55555 &
./suconnect 55555
Read: 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
Password matches, sending next password
EeoULMCra2q0dSkYj561DX7s1CpBuOBt

what happend here is that our server sent the one time message, thesetuid  binary compared it with the its database and found that it is actually the same. then he returned our new password.
KNOWLEDGE:

If a command needs to be run, but you don’t need to interact with it for a while and want to keep using the same terminal with other commands while the command is executing, you can use &. The ampersand will send the command in the background. This is a part of the Linux process management.


#HOw to Start a simple TCP server on a specified port
nc -l -p PORT_NUMBER

To create a “onetime server”, a server that sends one message and then disconnects, we can use the pipe and echo to input the message.
when the client connects to our server, it is going to send the message that we specified(our password) and then disconnect.
