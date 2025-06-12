INSTRUCTIONS:

The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.


SOLUTION:

the challenge says the password is in a human readable file. which means it contains ASCII encoding or UNICODE .
we can simply use file to know the files type:
syntax:
file ~/inhere/*            or file ./*           just because we have dashed file names
the only file that contains ASCII text is -file07
after cat the file(bear in mind that it is a dashed file, visit previous bandit to know how to work with these kidn of file names.)

KNOWLEDGE:
ASCII stands for American Standard Code For Information Interchange is an encoding system that encodes each character in english to a binary number for the computer to underrstand, it is like a link between what the computers understand and what humans understand, unfortunately, the ASCII encoding only hostes the english characters and numbers from 0-9 alongside some ponctuation. In order to make the computer understand more langauges, we amde the UNICODE, it contains more characters, in many langauges.


file command returns the type of a file;

