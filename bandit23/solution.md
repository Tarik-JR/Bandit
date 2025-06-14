INSTRUCTION:

A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

NOTE 2: Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…

SOLUTION:
same as before; just navigating throu the cron.d and we find these files:
clean_tmp  cronjob_bandit22  cronjob_bandit23  cronjob_bandit24  e2scrub_all  otw-tmp-dir  sysstat


we already investigated the cronjob_bandit22 and 23. lets see the content of cronjob_bandit24:
@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
whats inside the script?

#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname/foo
echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done

this script basically change the working directory to /var/spool/bandit24/foo cause the variable myname holds bandit24.
then it loop through all the files inside the directory, even hidden ones(start with .)
then it checks if the file is . or .. . if any of them then nothing happens; probably to avoid any erroes and dangerous behviours.
after that we have a line where they check if owner is bandit23, if the owner is bandit23 then it runs it with a timelimit ofc. and in all cases the current file gets deleted.

I think we have to create a script that prints out the password(echo) and it should be inside the directory that gets navigated by the previous script.

our script starts with #/bin/bash
then we have to echo the password that exist in:
/etc/bandit_pass/bandit24

we have to store the password somewhere accessible to us now.
i think of creating a directory under the /tmp/ where we can make a file to store the password. this is accessible by us in bandit23

one of the most important things is to change the file permissions so that it can be executed by bandit24. 
exactly after making the script.sh in /var/spool/bandit24/foo I changed the file permissions to 777 (not adviced but it works) :
syntax:
chmod 777 script.sh
KNOWLEDGE:

all the script should start with a sheebang:
#!/bin/bash     (or #!path to interpreter): it basically tells the system which interpreter to use to run the script.


