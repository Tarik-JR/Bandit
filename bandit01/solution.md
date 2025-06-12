INSTRUCTIONS:

The password for the next level is stored in a file called - located in the home directory

SOLUTION:
It isall  about how to work with "-" as a file(dashed file names)
solution: u can use -- to inform the CLI that u done with the options and that this a file name
or you specify the whole path of the file (in our case it is 
/home/bandit1/-
(this is working 100%)
using cat we should get the password:
cat ./-
password is:
263JGJPfgU6LtdEvgfWU1XP5yac29mFx


knowledge:
a dashed file name is a file that starts with - in its name; typically we use the - to inform the command that its going to get its argument from standard input .
some very basic commands for navigation:
ls : lists all files and directories
cd : change directory
cat: concatenate: allows you to print the content of a file to standard output
du: disc usage: to get how much spac the file takes up
find: it finds a file/directory based on some arguements²
