#!/bin/bash
file="/db-backup/fad-db-"$(date +"%Y%m%d%-H%M%S.sql")
echo $file
mysqldump -h mysql -uroot -p$MYSQL_DATABASE $MYSQL_ROOT_PASSWORD > $file
echo "dump success."
