#!/bin/bash
echo $1
echo "drop database"
mysql -h mysql -uroot -proot -e "drop database fadfun"
echo "recreate database"
mysql -h mysql -uroot -proot -e "create database fadfun"
echo "import data"
mysql -h mysql -uroot -proot fadfun < $1
echo "done"
