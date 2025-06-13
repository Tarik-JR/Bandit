INSTRUCTIONS:
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)
SOLUTION:

first we make a directory in /tmp and we call it laylahilana
mkdir /tmp/laylahilana
then we copy it:   cp data.txt /tmp/laylahilana
we change the working directory to the one we made. (cd /tmp/laylahilana)
when we cat the file we see on the left columns some hexadecimal numbers, followed by hexadecimal again and a plain text.(left offset, middle hex bytes, right ASCII)
 
this is reminding us of hexdumb : A hex dump is a way of showing the raw data inside a file or memory.It's super useful for:

Inspecting files at the byte level (e.g., in forensics, hacking, debugging)

Understanding hidden content or binary file structure.(cause typically obody understands binary)

to decode a hexdumb we use the xxd command
sytnax: cheat:xxd 
# To convert hex to bin/string: # Revert a plaintext hexdump back into binary, and save it as a binary file:
-r          reverse operation: convert (or patch) hexdump into binary.
syntax xxd -r inputFile outputFile
mv binary.txt binary.bin
we then use File command to know what kind of fil is that, we gonna see that its gzip compressed data;
we have to change the extention and decompress it. (change using mv and decompress using gzip -d)
we then check the file type and we find that its bzip2 again. we do the same steps again as above
we continue until we find a tar file and we decode it using tar -xf filename
loop this until we get cat data8.bin
The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
KNOWLEDGE:
Hexdump is a utility that displays the contents of binary files in a human-readable format, typically showing data in hexadecimal and ASCII. It helps users inspect file structures, debug binary data, and analyze file contents easily.
