#!/bin/bash

mkdir /tmp/randomEnough
cd /tmp/randomEnough
touch key.txt
cat /etc/bandit_pass/bandit24 >> key.txt
