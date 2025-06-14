INSTRUCTION:
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.
Commands you may need to solve this level
cron, crontab, crontab(5) (use “man 5 crontab” to access this)
SOLUTION:
First, we look at what is in the ‘/etc/cron.d’ folder. Specifically, for this level, I looked at the cronjob ‘cronjob_bandit22’.
This cronjob runs the /usr/bin/cronjob_bandit22.sh file as bandit22 user. The five stars indicate it is run every minute, every day. To know what exactly is executed, we need to take a look at the bash file.

This file creates a file in the ’tmp’ folder and gives read permission to everyone (indicated by the last 4). Then it copies the input of the bandit22 password file into the newly created file.

So the password to the next level is in this created file:

password:		tRae0UfB9v0UzbCdn9cY0gQnds9GF58Q

KNOWELDGE:

Cron is a system scheduler for running scripts/jobs  or tasks without the user/admin intervention.
In Linux, there are multiple folders that can contain these cronjobs: cron.d, cron.daily, cron.hourly, cron.monthly, crontab, cron.weekly. The folders contain files with instructions on how the programs are run. It starts with the first five columns, which indicate at what time/interval the program should be done. Next is the command/program that is to be executed.

# crontab format
* * * * *  command_to_execute
- - - - -
| | | | |
| | | | +- day of week (0 - 7) (where sunday is 0 and 7)
| | | +--- month (1 - 12)
| | +----- day (1 - 31)
| +------- hour (0 - 23)
+--------- minute (0 - 59)

# every midnight
0 0 * * * /home/user/command.sh

# compute your crontab periodicity format online
https://crontab.guru/

