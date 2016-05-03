#!/bin/bash

g_name='inazo1115'
g_email='inaba1115@gmail.com'

if [ ! -e .git/config ]; then
    echo "Please run this script at git root dir."
    exit 1
fi

cat .git/config

echo -e "\nChange local name and email to ${g_name} and ${g_email}? [y/N]"
read ans
if [ "$ans" = "y" ]; then
    git config user.name > /dev/null
    git config user.email > /dev/null
    echo -e "\nIt has changed.\n"
else
    echo -e "It has not changed.\n"
fi

cat .git/config
