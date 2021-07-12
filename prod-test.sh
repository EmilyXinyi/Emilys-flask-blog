#!/bin/sh

curl -s -o /dev/null -w "%{http_code}" https://emilyxinyi-chen.duckdns.org
res=$?
if [[ $res != "200"]] 
then
    echo "home page failed with: $res"
else
    echo "home page success"
fi

curl -s -o /dev/null -w "%{http_code}" https://emilyxinyi-chen.duckdns.org/health
res=$?
if [[ $res != "200"]] 
then
    echo "health page failed with: $res"
else
    echo "health page success"
fi

curl -s -o /dev/null -w "%{http_code}" https://emilyxinyi-chen.duckdns.org/register
res=$?
if [[ $res != "200"]] 
then
    echo "register page failed with: $res"
else
    echo "register page success"
fi

curl -s -o /dev/null -w "%{http_code}" https://emilyxinyi-chen.duckdns.org/login
res=$?
if [[ $res != "200"]] 
then
    echo "login page failed with: $res"
else
    echo "login page success"
fi