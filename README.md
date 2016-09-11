# FadDocker
an elgg develop environment with docker.

for workspace / php playground, you can use:

webgriffe/php-apache-base:5.5

# Usage

## Migration from non docker environment.
clone FadDocker to project dir
modify fad.env to proper values.

cd FadDocker
./init.sh
docker-compose up -d

docker exec ..... bash to workspace contianer.
###import db.
./restore.sh "database dump file full path".
### update db to fit docker environment.

UPDATE `elgg_datalists` SET `value` = "/usr/share/nginx/html/" WHERE `name` = "path";

UPDATE `elgg_datalists` SET `value` = "/fad/web/data/" WHERE `name` = "dataroot";

UPDATE `elgg_sites_entity` SET `url` = "http://mynewdomain.com";

UPDATE elgg_metastrings set string = '/fad/web/data/' WHERE id = (SELECT value_id from elgg_metadata where name_id = (SELECT * FROM (SELECT id FROM elgg_metastrings WHERE string = 'filestore::dir_root') as ms2) LIMIT 1);
