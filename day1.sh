#!/bin/sh

echo "DAY1" >> ./log/day1.txt
echo "-date-" >> ./log/day1.txt
date >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Check the login users-(who)" >> ./log/day1.txt
who >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Recent login history (only 3)(last -n 3)-" >> ./log/day1.txt
last -n 3 >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Time elapsed since system bootup(uptime)-" >> ./log/day1.txt
uptime >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Kernel and OS information-" >> ./log/day1.txt
echo "(uname -a)" >> ./log/day1.txt
uname -a >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "(lsb_release)" >> ./log/day1.txt
lsb_release -a >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Disk usage-(df -h)" >> ./log/day1.txt
df -h >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Verifying Log Directory Size(du -sh /var/log/*)-" >> ./log/day1.txt
du -sh /var/log/* >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Current user information-" >> ./log/day1.txt
echo "(whoami)" >> ./log/day1.txt
whoami >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "(id)" >> ./log/day1.txt
id >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "-Check the directory that is important to the user-" >> ./log/day1.txt
echo "(echo \$HOME)" >> ./log/day1.txt
echo $HOME >> ./log/day1.txt
echo "-----------------------------------------------------" >> ./log/day1.txt

echo "(ls -al)" >> ./log/day1.txt
ls -al >> ./log/day1.txt

