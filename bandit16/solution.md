INSTRUCTIONS:
The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.

SOLUTION:
first we run a simple nmap scan .
syntax:
nmap -p 31000-32000 localhost
we find 5 open ports:
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown
 but we dont know what kind of services they running
 we have to add the -sV to find version of each service running on each port.
 !!!!!!!!!IT IS GOING TO TAKE SOME TIME, TAKE A COFFEE OR DRINK SOME WATER!!!!!!!!
 after the scan is finished, we get a port that echo this:"
1 service unrecognized despite returning data. If you know the service/version, please submit the following fingerprint at https://nmap.org/cgi-bin/submit.cgi?new-service :
SF-Port31790-TCP:V=7.94SVN%T=SSL%I=7%D=6/13%Time=684BFBC2%P=x86_64-pc-linu
SF:x-gnu%r(GenericLines,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x2
SF:0current\x20password\.\n")%r(GetRequest,32,"Wrong!\x20Please\x20enter\x
SF:20the\x20correct\x20current\x20password\.\n")%r(HTTPOptions,32,"Wrong!\
SF:x20Please\x20enter\x20the\x20correct\x20current\x20password\.\n")%r(RTS
SF:PRequest,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x20current\x20
SF:password\.\n")%r(Help,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x
SF:20current\x20password\.\n")%r(FourOhFourRequest,32,"Wrong!\x20Please\x2
SF:0enter\x20the\x20correct\x20current\x20password\.\n")%r(LPDString,32,"W
SF:rong!\x20Please\x20enter\x20the\x20correct\x20current\x20password\.\n")
SF:%r(SIPOptions,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x20curren
SF:t\x20password\.\n");"
probably this is our port because it says incorrect password, but once we send the correct one it is going to send back the new password.
when we send our password we incounter a problem that says read R BLOCK rather than sending back the password. solution is to use -quiet option.
syntax :
openssl s_client -connect localhost:31790 -quiet
when propted for input i gave it the password but i got an RSA Private Key not a password.
we save it and use it for auth to bandit17 and from there i can find the bandit 16 password;)

once i tried auth using the key.private I incountred a permission issue, i had to remove all the permission from others and from group only leave the rwx to user(used chmod)

KNOWLEDGE:

once they inform us to scan the ports we have to think of Nmap, it is a network mapper. finds the open ports and the services running in each of them. I have attached a CheatSheet.pdf that contains the most used nmap arguements.
about the openssl command,When used interactively (which means neither -quiet nor -ign_eof have been given), then certain commands are also recognized which perform special operations. These commands are a letter which must appear at the start of a line. They are listed below.

Q - End the current SSL connection and exit.

R - Renegotiate the SSL session (TLSv1.2 and below only).

k - Send a key update message to the server (TLSv1.3 only)

K - Send a key update message to the server and request one back (TLSv1.3 only)

So if the password starts with one of this keystorekes, it will trigger an action. When used with the -quiet it won't be the case.
we never get a password, rather we get an RSA key. whats that?
An RSA private key is a secret cryptographic key used in the RSA encryption algorithm. RSA is widely used for secure communication, like encrypting data, signing digital messages, or authenticating users.
	What can you do with a private key?
-->Decrypt a message that was encrypted with your public key.
-->Sign a message to prove it came from you.

we gonna save it in a file in /tmp/laylahilana2 for example
ssh -i file.key bandit17@localhost -p 2220	
cat /etc/bandit_pass/bandit17
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD



i learnt that the private key should be permitted to be acceded only by user, not others or group
