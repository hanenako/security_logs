#!/bin/sh

echo "" > ./log/day2.txt

echo "DAY2" >> ./log/day2.txt
echo "-date-" >> ./log/day2.txt
date >> ./log/day2.txt
echo "-----------------------------------------------------" >> ./log/day2.txt

echo "-すべてのアカウントの確認(cut -d: -f1 /etc/passwd)" >> ./log/day2.txt
cut -d: -f1 /etc/passwd >> ./log/day2.txt
echo "-----------------------------------------------------" >> ./log/day2.txt

echo "-sudo権限アカウント確認(getent group sudo)-" >> ./log/day2.txt
getent group sudo >> ./log/day2.txt
echo "-----------------------------------------------------" >> ./log/day2.txt

echo "-ロックされているアカウント確認(sudo passwd -S root)-" >> ./log/day2.txt
echo "-L:Locked P:Password-" >> ./log/day2.txt
sudo passwd -S root >> ./log/day2.txt
echo "-----------------------------------------------------" >> ./log/day2.txt

echo "-ログインできないサービスアカウント確認-" >> ./log/day2.txt
echo "(cat /etc/passwd | grep -E "/false\|/nologin")" >> ./log/day2.txt
echo "/usr/sbin/nologin または /bin/false → ログイン不可アカウント" >> ./log/day2.txt
echo "主にサービス用アカウント" >> ./log/day2.txt
cat /etc/passwd | grep -E "/false|/nologin" >> ./log/day2.txt
echo "-----------------------------------------------------" >> ./log/day2.txt

echo "下記内容は手動で確認済み" >> ./log/day2.txt
echo "ユーザ追加、sudo権限追加、sudo権限削除、ユーザ削除" >> ./log/day2.txt
echo "sudo adduser testuser" >> ./log/day2.txt
echo "sudo usermod -aG sudo testuser" >> ./log/day2.txt
echo "sudo deluser testuser sudo" >> ./log/day2.txt
echo "sudo deluser --remove-home testuser" >> ./log/day2.txt
