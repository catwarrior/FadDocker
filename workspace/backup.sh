#!/bin/bash
file="/db-backup/fad-db-"$(date +"%Y%m%d%-H%M%S.sql")
echo $file
mysqldump -h mysql -uroot -proot fadfun > $file
echo "dump success."
