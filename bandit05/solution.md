INSTRUCTIONS:

The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

human-readable
1033 bytes in size
not executable

SOLUTION:


this time we do have many directories each one of them contains space named file and hidden ones. we cant check each one of them undividually. we use the find command with some options:
syntax:		find . -type f -size 1033c -not -executable
. is the working directory
-type to decide the type of  file we are looking for(it can be directory or file or ....)
-size we write the number and c means it is in Bytes.
-not -executable means not executable
this all conditions from the challenge itself; which leads us to this file:
./maybehere07/.file2
password: 
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG



KNOWLEDGE:

To get the file size, we use the du"Desc Usage" command. Specifically, to get the size in bytes, we also use the -b flag. 

To look at all the files, including hidden ones, the -a flag is offered.
