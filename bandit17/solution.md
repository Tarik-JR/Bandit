INSTRUCTION:
There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new
SOLUTION:
when looking for difference we have to think about the difference command
when i used the --side-by-side arguemnt, i found that the only line that has been changed is 
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
this must be the key:
KNOWLEDGE:

# To report whether the files are identical:
diff -s <file-1> <file-2>

# Compare files (lists changes to turn `old_file` into `new_file`):
diff old_file new_file

# Compare files, showing the differences side by side:
diff --side-by-side old_file new_file

