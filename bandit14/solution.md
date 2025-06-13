INSTRUCTION:
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.

SOLUTION:
very easy challenge, we can use the telnet command to submit the passsword to the localhost on port 30000
syntax:
# Telnet to a specific port of a host:
telnet ip_address port
in our case:
telnet localhost 30000
then paste the password we got last time.
and it returns the password for bandit15

KNOWLEDGE:
nc or netcat is a command that allows to read and write data over a network connection. It can be used for TCP and UDP connections. To connect to a service (as client) on a network the command syntax is the following: nc <host> <port>. To create a server that listens to incoming packets, the command looks like this: nc -l <port>.
