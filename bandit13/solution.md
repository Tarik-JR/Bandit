INSTRUCTION:

The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on

SOLUTION:
when we discover what we have in the working directory we find a file called: sshkey.private.
when used with file command:
file sshkey.private
sshkey.private: PEM RSA private key

along side the ssh command we can login to any other machine if we have a private key
# Connect to a remote server with a specific identity (private key):
ssh -i path/to/key_file username@remote_host
when applied: 
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
 we get access to bandit 14
 from there we can get the password to bandit14:
 MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS


KNOWLEDGE:

what is a Public/Private key combinaition?
its called asymetric cryptography, symmetric cryptography uses same key for both encryption and decryption, while asymetric uses a pair of keys.
public: a personal key that everyone knows. can be used to encrypt but not to decrypt the data.
private: a personal key but private in ur local machine, can be used to decryt what got incrypted using public key.
-->this way, evryone can encrypt the message they want to send you, and nobody on the way can decrypt it, even if you have the public key, cause u need the private one.
--> can also be used as as digital signature, if TARIK encrypted a file using his private key, and then made the file availabke to everyone, me as JBRIL can make sure that the true file owner that i have is TARIK by trying to decrypt it using his public key(which is available), if it works, then its really him. if not, the file has been tempored.
it is mathematically impossible to know one of the pairs out of another one.

