INSTRUCTION:
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

NOTE: Looking at shell scripts written by other people is a very useful skill. The script for this level is intentionally made easy to read. If you are having problems understanding what it does, try executing it to see the debug information it prints.
SOLUTION:
similar to the previous one, first thing we need to do is to list what is inside /etc/cron.d/
what we find: clean_tmp         cronjob_bandit23  e2scrub_all  sysstat
cronjob_bandit22  cronjob_bandit24  otw-tmp-dir

we inspect whats inside cronjob_bandit23 and we find this :
@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
* * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null

which leads us to read whats inside the script cronjob_bandit23.sh

syntax:	cat /usr/bin/cronjob_bandit23.sh
std:	#!/bin/bash

	myname=$(whoami)
	mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

	echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

	cat /etc/bandit_pass/$myname > /tmp/$mytarget	

by reading the script we find out that the password of bandit23 is copied to /tmp/$mytarget
to get the value of $mytarget we can do it alone though
sytnax: 	echo I am user bandit23 | md5sum | cut -d ' ' -f 1

we get: 8ca319486bfbbc3663ea0fbe81326349

now we cat /tmp/$mytarget

which is /tmp/8ca319486bfbbc3663ea0fbe81326349

and we get the password: 0Zf11ioIjMVN551jX3CmStKLYqjk54Ga


KNOWLEDGE
In Linux, the @reboot directive is used in crontab to schedule a command or script to run automatically at system startup (i.e., when the machine reboots).


