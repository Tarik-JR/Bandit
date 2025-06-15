INSTRUCTION:
A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.
You do not need to create new connections each time


SOLUTION:


it is a brute-force attack, we have to try all the possible combainations, (all possibilities), we basically have 10*10*10*10 possibilities, that 10.000 possibiliy that we can not really do it manually. I think of writing a script to do so.
before that we wanna give it a random try to see how it works,
using netcat:
nc localhost 30002
the server responds:"I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space"   its basically prompting for the previously fond password as well as a pincode seperated by space
the input should look like this:
$password $pincode
we already know the password from the past challenge. all whats left is cracking the pincode, just some RegEx knowledge, to make all possible pincodes:
echo {0000..9999}
when we enter a wrong password we get:"Wrong! Please enter the correct current password and pincode. Try again."
 based on all that i wrote a script 
First, I put my password in a variable called password,
then used a for loop in range 0000..9999 and all i did is printed the password alongside the iteration pincode and I used printf instead of echo because I want a return line(the \n) which I think not possible to do in echo.
then piped the results to nc and then piped the results to grep -v wroong to get any result that doesnt contain the word wrong(eliminate unwanted results)

don't forget to give the execution permissions to ur script before trying to execute it. In case I forgot to mention, I wrote the script in a directory in /var/ because it is not allowed to make anything in the homedirectory.



KNOWLEDGE:



a Daemon(not Diementa even thou u miss her), is a program that runs as a background process.rather than being under the direct control of an interactive user

if u give 111 permissions to your file it will not get executed, it needs reading permissions as well. 111 works with binary file. but for our case, it is just a file, the system need to read it first to know which bash to use for executing the file. so you can give it 500 for example and it should work.
printf operates like printf in c.

# Find lines NOT containing pattern:
grep -v <pattern> <file>

