INSTEUCTION:
The password for the next level is stored in the file data.txt, which contains base64 encoded data

SOLUTION:
at first, we might think that the password is the one we find once we cat the data.txt but it doesnot work actually. but the challenge says that its base 64; we actually have to decode it.

to encode we usually echo the text to base64 command
to decode we use the -d option(argument)

syntax: cat data.txt | base64 -d

The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
KNOWLEDGE:

base64 is an encoding(not encryption) system similar to binary ..etc. Base64 is a binary-to-text encoding scheme. It can often be recognised by equal signs at the end of the data. However, this is not always the case. Linux has a command called base64 that allows for encoding and decoding in Base64. For decoding, we need to use the flag -d.
