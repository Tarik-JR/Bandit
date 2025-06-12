INSTRUCTIONS:
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
SOLUTION:
simply we use the uniq command to detect the line that only accurs once:
# Display number of occurrences of each line along with that line:
sort path/to/file | uniq -c
or 
sort path/to/file | uniq -u   #Display only unique lines:

we get a list of all the keys with the number of accurences of each of them. the only key that accured only once is:

4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
KNOWLEDE:

