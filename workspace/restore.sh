#!/bin/bash
echo $1
echo "drop database"
mysql -h mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "DROP DATABASE $MYSQL_DATABASE"
echo "recreate database"
mysql -h mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE fadfun DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci"
echo "import data"
mysql -h mysql -uroot -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < $1
echo "done"
