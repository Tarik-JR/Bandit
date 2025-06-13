INSTRUCTION:
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.

Helpful note: Getting “DONE”, “RENEGOTIATING” or “KEYUPDATE”? Read the “CONNECTED COMMANDS” section in the manpage.

SOLUTION:
as explained in KNOWLEDGE session:
we can use the syntax:
openssl s_client localhost/30001 to establish a connection where we can send our password.
we get the new password: 
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
KNOWLEDGE:

TLS (Transport Layer Security) and SSL (Secure Sockets Layer) are crywptographic protocols used to secure communication over a network, especially the internet.when you visit a website that starts with https:// you are using either TLS/SSL protocols to encrypt data so that no one can tamper with it while it is being transmitted. 
some servers are configured to only accept traffic encrypted using SSL/TLS and reject any other encrypted traffic. in our case, if we tried to submit the password using nc we will not get any respons from the server. it is like talking to an American in French; ofc he will not respond;)
for most manual, terminal-based CTF or bandit-style tasks, openssl s_client is our go-to tool to establish an SSL/TLS connection to a server that only accepts encrypted communication.
openssl s_client -connect example.com:443
is the syntax to establish a TLS/SSL connection with a server on a specific port.

